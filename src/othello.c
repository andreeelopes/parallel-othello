//
//  othello.c
//
//  Created by Bernardo Ferreira and João Lourenço on 22/09/17.
//  Copyright (c) 2017 DI-FCT-UNL. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#include <cilk/cilk.h>
#include <cilk/cilk_api.h>
#include <sys/time.h>

#define RED     "\x1B[31m"
#define BLU     "\x1B[34m"
#define RESET   "\x1B[0m"
#define TOPLEFT "\x1B[0;0H"
#define CLEAR   "\x1B[2J"

#define E '-'
#define R 'R'
#define B 'B'

#define TRUE  1
#define FALSE 0

typedef struct {
    int i;
    int j;
    char color;
    int right;
    int left;
    int up;
    int down;
    int up_right;
    int up_left;
    int down_right;
    int down_left;
    int heuristic;
} move;

double parallel_time = 0.0;
char print_mode = 'n';
int anim_mode = 0;
int board_size = 8;
int delay = 0;
int threads = 1;
int measure_time = 0;

char** board;

//returns time in micro seconds
double time_elapsed (struct timeval start, struct timeval end) {
    return (end.tv_sec - start.tv_sec) * 1000000.0 + end.tv_usec - start.tv_usec;
}

void init_board() {
    board = malloc(board_size * sizeof(char*));
    for (int i = 0; i < board_size; i++) {
        board[i] = malloc(board_size * sizeof(char));
        for (int j = 0; j < board_size; j++)
            board[i][j] = E;
    }
    board[board_size / 2 - 1][board_size / 2 - 1] = R;
    board[board_size / 2][board_size / 2 - 1] = B;
    board[board_size / 2 - 1][board_size / 2] = B;
    board[board_size / 2][board_size / 2] = R;
}

void init_move(move* m, int i, int j, char color) {
    m->i = i;
    m->j = j;
    m->color = color;
    m->right = 0;
    m->left = 0;
    m->up = 0;
    m->down = 0;
    m->up_right = 0;
    m->up_left = 0;
    m->down_right = 0;
    m->down_left = 0;
    m->heuristic = 0;
}

int valid_move(int i, int j) {
    if (i >= 0 && i < board_size && j >= 0 && j < board_size)
        return TRUE;
    else
        return FALSE;
}

char opponent(char turn) {
    if (turn == R)
        return B;
    else if (turn == B)
        return R;
    else
        return -1; //ERROR
}

int score(char color)
{
    int res = 0;
    for (int i = 0; i < board_size; i++) {
        for (int j = 0; j < board_size; j++) {
            if (board[i][j] == color)
                res++;
        }
    }
    return res;
}

void print_board() {
    if (print_mode == 's')
        return;
    if (anim_mode) {
        printf(TOPLEFT);
    }
    for (int i = 0; i < board_size; i++) {
        for (int j = 0; j < board_size; j++) {
            const char c = board[i][j];
            if (print_mode == 'n')
                printf("%c ", c);
            else if (print_mode == 'c') {
                if (c == R)
                    printf("%s%c %s", RED, R, RESET);
                else if (c == B)
                    printf("%s%c %s", BLU, B, RESET);
                else
                    printf("%s%c %s", "", E, "");
            }
        }
        printf("\n");
    }
    for (int i = 0; i < 2 * board_size; i++)
        printf("=");
    printf("\n");
}

void print_scores() {
    int w = score(R);
    int b = score(B);
    printf("score - red:%i blue:%i\n", w, b);
}

void free_board() {
    for (int i = 0; i < board_size; i++)
        free(board[i]);
    free(board);
}

void finish_game() {
    //print_board();
    //print_scores();
    free_board();
}

void flip_direction (move* m, int inc_i, int inc_j) {
    int i = m->i + inc_i;
    int j = m->j + inc_j;
    while (board[i][j] != m->color) {
        board[i][j] = m->color;
        i += inc_i;
        j += inc_j;
    }
}

void flip_board(move* m) {
    board[m->i][m->j] = m->color;
    if (m->right)
        flip_direction(m, 1, 0); //right
    if (m->left)
        flip_direction(m, -1, 0); //left
    if (m->up)
        flip_direction(m, 0, -1); //up
    if (m->down)
        flip_direction(m, 0, 1); //down
    if (m->up_right)
        flip_direction(m, 1, -1); //up right
    if (m->up_left)
        flip_direction(m, -1, -1); //up left
    if (m->down_right)
        flip_direction(m, 1, 1); //down right
    if (m->down_left)
        flip_direction(m, -1, 1); //down left
}

int get_direction_heuristic(move* m, char opp, int inc_i, int inc_j) {
    int heuristic = 0;
    int i = m->i + inc_i;
    int j = m->j + inc_j;
    char curr = opp;

    while (valid_move(i, j)) {
        curr = board[i][j];
        if (curr != opp)
            break;
        heuristic++;
        i += inc_i;
        j += inc_j;
    }
    if (curr == m->color)
        return heuristic;
    else
        return 0;
}

void get_move(move* m) {
    if (board[m->i][m->j] != E)
        return;
    char opp = opponent(m->color);
    int heuristic;

    heuristic = get_direction_heuristic(m, opp, 1, 0); //right
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->right = 1;
    }
    heuristic = get_direction_heuristic(m, opp, -1, 0); //left
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->left = 1;
    }
    heuristic = get_direction_heuristic(m, opp, 0, -1); //up
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->up = 1;
    }
    heuristic = get_direction_heuristic(m, opp, 0, 1); //down
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->down = 1;
    }
    heuristic = get_direction_heuristic(m, opp, 1, -1); //up right
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->up_right = 1;
    }
    heuristic = get_direction_heuristic(m, opp, -1, -1); //up left
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->up_left = 1;
    }
    heuristic = get_direction_heuristic(m, opp, 1, 1); //down right
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->down_right = 1;
    }
    heuristic = get_direction_heuristic(m, opp, -1, 1); //down left
    if (heuristic > 0) {
        m->heuristic += heuristic;
        m->down_left = 1;
    }
}

//PLEASE PARALELIZE THIS FUNCTION
int make_move(char color) {

    move best_moves [board_size];

    struct timeval parallel_start, parallel_end;
    gettimeofday(&parallel_start, NULL);

    cilk_for (int i = 0; i < board_size; i++) {
        move m;
        best_moves[i].heuristic = 0;

        for (int j = 0; j < board_size; j++) {
            init_move(&m, i, j, color);
            get_move(&m);
            if (m.heuristic > best_moves[i].heuristic) {
                best_moves[i] = m;
            }
        }
    }
    gettimeofday(&parallel_end, NULL);
    parallel_time += time_elapsed(parallel_start, parallel_end);
    move best_move;
    int max = -1;
    for (int i = 0; i < board_size; i++)
        if (best_moves[i].heuristic > max) {
            max = best_moves[i].heuristic;
            best_move = best_moves[i];
        }

    if (best_move.heuristic > 0) {
        flip_board(&best_move);
        return TRUE;    //made a move
    } else
        return FALSE;   //no move to make
}


void help(const char* prog_name) {
    printf ("Usage: %s [-s] [-c] [-t] [-a] [-d <MILI_SECA>] [-b <BOARD_ZISE>] [-n <N_THREADS>]\n", prog_name);
    exit (1);
}

void get_flags(int argc, char * argv[]) {
    char ch;
    while ((ch = getopt(argc, argv, "scatd:b:n:")) != -1) {
        switch (ch) {
        case 's':
            print_mode = 's';
            break;
        case 'a':
            anim_mode = 1;
            break;
        case 'c':
            if (print_mode != 's')
                print_mode = 'c';
            break;
        case 'd':
            delay = atoi(optarg);
            if (delay < 0) {
                printf("Minimum delay is 0.\n");
                help(argv[0]);
            }
            break;
        case 'b':
            board_size = atoi(optarg);
            if (board_size < 4) {
                printf("Minimum board size is 4.\n");
                help(argv[0]);
            }
            break;
        case 'n':
            threads = atoi(optarg);
            if (threads < 1) {
                printf("Minimum threads is 1.\n");
                help(argv[0]);
            }
            else {
                char str[13];
                sprintf(str, "%d", threads);
                //printf("number of threads: %s\n", str);
                __cilkrts_set_param("nworkers", "str");
            }
            break;
        case 't':
            measure_time = TRUE;
            break;
        case '?':
        default:
            help(argv[0]);
        }
    }
}

double micro_to_seconds(double micro) {
    return micro / 1000000.0;
}


int main (int argc, char * argv[]) {

    struct timeval start, end;

    //int ncores = sysconf(_SC_NPROCESSORS_ONLN);
    get_flags(argc, argv);
    if (measure_time) {
        gettimeofday(&start, NULL);
    }
    init_board();
    int cant_move_r = FALSE, cant_move_b = FALSE;
    char turn = R;

    if (anim_mode) {
        printf(CLEAR);
    }
    while (!cant_move_r && !cant_move_b) {
        print_board();
        int cant_move = !make_move(turn);
        if (cant_move) {
            if (turn == R)
                cant_move_r = TRUE;
            else
                cant_move_b = TRUE;
        } else {
            if (turn == R)
                cant_move_r = FALSE;
            else
                cant_move_b = FALSE;
        }
        turn = opponent(turn);
        usleep(delay * 1000);
    }
    finish_game();

    //printf("Number of Cores:%d\n", ncores );
    if (measure_time) {
        gettimeofday(&end, NULL);

        double total_time = time_elapsed(start, end);
        double serial_time = total_time - parallel_time; //micro seconds

        double p_work = parallel_time * 100 / total_time;
        double s_work = serial_time * 100 / total_time;

        printf("Total Time (micro)    = %lf\n", total_time); //micro
        printf("Serial Time (micro)   = %lf\n", serial_time); //micro
        printf("Parallel Time (micro) = %lf\n", parallel_time); //micro
        printf("---------------------------------------------\n");
        printf("Total Time (sec)    = %6.3lf\n", micro_to_seconds(total_time)); //seconds
        printf("Serial Time (sec)   = %6.3lf\n", micro_to_seconds(serial_time)); //seconds
        printf("Parallel Time (sec) = %6.3lf\n", micro_to_seconds(parallel_time)); //seconds
        printf("---------------------------------------------\n");
        printf("Serial Work:   %0.3lf%%\n", s_work);
        printf("Parallel Work: %0.3lf%%\n", p_work);

        printf("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n\n");


    }
}

