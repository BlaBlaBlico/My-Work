// ConsoleApplication1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <stdlib.h>
#include <time.h>
using namespace std;

//Board printing function:
void print_board(char board[][5]){
	for (int row = 0; row < 5; row++){
		cout << "       ";
		for (int col = 0; col < 5; col++){
			cout << board[row][col];
		}
		cout << endl;
	}
}

//Player tag choise function:
void player_choice_tag(char name[], char tag_win[], char tag_lose[]){
	cout << name << " choose O or X: ";
	cin >> tag_win[0];
	if (tag_win[0] == 'X'){
		tag_lose[0] = 'O';
	}
	else{
		tag_lose[0] = 'X';
	}
	cout << endl;
}

//Player possition:
void player_possition(char name[], char board[][5], char tag[]){
	int y;
	//insert number:
	cout << name << " --> ";
	cin >> y;
	cout << endl;
	//check if place taken:
	if (y == 1){
		if (board[0][0] == 'X' || board[0][0] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 2){
		if (board[0][2] == 'X' || board[0][2] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 3){
		if (board[0][4] == 'X' || board[0][4] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 4){
		if (board[1][0] == 'X' || board[1][0] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 5){
		if (board[1][2] == 'X' || board[1][2] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 6){
		if (board[1][4] == 'X' || board[1][4] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 7){
		if (board[2][0] == 'X' || board[2][0] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 8){
		if (board[2][2] == 'X' || board[2][2] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y == 9){
		if (board[2][4] == 'X' || board[2][4] == 'O'){
			cout << "This possition is taken choose a valid one: ";
			cin >> y;
		}
	}
	else if (y != 1 || y != 2 || y != 3 || y != 4 || y != 5 || y != 6 || y != 7 || y != 8 || y != 9){
		cout << "Please choose a number from 1 to 9: ";
		cin >> y;
	}
	//transform number to tag:
	if (y == 1){
		board[0][0] = tag[0];
	}
	else if (y == 2){
		board[0][2] = tag[0];
	}
	else if (y == 3){
		board[0][4] = tag[0];
	}
	else if (y == 4){
		board[1][0] = tag[0];
	}
	else if (y == 5){
		board[1][2] = tag[0];
	}
	else if (y == 6){
		board[1][4] = tag[0];
	}
	else if (y == 7){
		board[2][0] = tag[0];
	}
	else if (y == 8){
		board[2][2] = tag[0];
	}
	else if (y == 9){
		board[2][4] = tag[0];
	}
	print_board(board);
}

//Win Checker:
void win_check(int& win1, int& win2, char board[][5], char t1[], char t2[], int& u){
	if (board[0][0] == t1[0] && board[1][0] == t1[0] && board[2][0] == t1[0]){
		win1++;
		u += 1;
		board[0][0] = '|';
		board[1][0] = '|';
		board[2][0] = '|';
	}
	else if (board[0][2] == t1[0] && board[1][2] == t1[0] && board[2][2] == t1[0]){
		win1++;
		u += 1;
		board[0][2] = '|';
		board[1][2] = '|';
		board[2][2] = '|';
	}
	else if (board[0][4] == t1[0] && board[1][4] == t1[0] && board[2][4] == t1[0]){
		win1++;
		u += 1;
		board[0][4] = '|';
		board[1][4] = '|';
		board[2][4] = '|';
	}
	else if (board[0][4] == t2[0] && board[1][4] == t2[0] && board[2][4] == t2[0]){
		win2++;
		u += 2;
		board[0][0] = '|';
		board[1][0] = '|';
		board[2][0] = '|';
	}
	else if (board[0][4] == t2[0] && board[1][4] == t2[0] && board[2][4] == t2[0]){
		win2++;
		u += 2;
		board[0][2] = '|';
		board[1][2] = '|';
		board[2][2] = '|';
	}
	else if (board[0][4] == t2[0] && board[1][4] == t2[0] && board[2][4] == t2[0]){
		win2++;
		u += 2;
		board[0][4] = '|';
		board[1][4] = '|';
		board[2][4] = '|';
	}
	else if (board[0][0] == t1[0] && board[0][2] == t1[0] && board[0][4] == t1[0]){
		win1++;
		u += 1;
		board[0][0] = '-';
		board[0][2] = '-';
		board[0][4] = '-';
	}
	else if (board[1][0] == t1[0] && board[1][2] == t1[0] && board[1][4] == t1[0]){
		win1++;
		u += 1;
		board[1][0] = '-';
		board[1][2] = '-';
		board[1][4] = '-';
	}
	else if (board[2][0] == t1[0] && board[2][2] == t1[0] && board[2][4] == t1[0]){
		win1++;
		u += 1;
		board[2][0] = '-';
		board[2][2] = '-';
		board[2][4] = '-';
	}
	else if (board[0][0] == t2[0] && board[0][2] == t2[0] && board[0][4] == t2[0]){
		win2++;
		u += 2;
		board[0][0] = '-';
		board[0][2] = '-';
		board[0][4] = '-';
	}
	else if (board[1][0] == t2[0] && board[1][2] == t2[0] && board[1][4] == t2[0]){
		win2++;
		u += 2;
		board[1][0] = '-';
		board[1][2] = '-';
		board[1][4] = '-';
	}
	else if (board[2][0] == t2[0] && board[2][2] == t2[0] && board[2][4] == t2[0]){
		win2++;
		u += 2;
		board[2][0] = '-';
		board[2][2] = '-';
		board[2][4] = '-';
	}
	else if (board[2][0] == t1[0] && board[1][2] == t1[0] && board[0][4] == t1[0]){
		win1++;
		u += 1;
		board[2][0] = '/';
		board[1][2] = '/';
		board[0][4] = '/';
	}
	else if (board[2][4] == t1[0] && board[1][2] == t1[0] && board[0][0] == t1[0]){
		win1++;
		u += 1;
		board[2][4] = '\\';
		board[1][2] = '\\';
		board[0][0] = '\\';
	}
	else if (board[2][0] == t2[0] && board[1][2] == t2[0] && board[0][4] == t2[0]){
		win2++;
		u += 2;
		board[2][0] = '/';
		board[1][2] = '/';
		board[0][4] = '/';
	}
	else if (board[2][4] == t2[0] && board[1][2] == t2[0] && board[0][0] == t2[0]){
		win2++;
		u += 2;
		board[2][4] = '\\';
		board[1][2] = '\\';
		board[0][0] = '\\';
	}
	else if (board[0][0] != '1' && board[0][2] != '2' && board[0][4] != '3' && board[1][0] != '4' && board[1][2] != '5' && board[1][4] != '6' && board[2][0] != '7' && board[2][2] != '8' && board[2][4] != '9'){
		u += 3;
	}
}

//Score Board function:
void score_board(char n1[], char n2[], char t1[], char t2[], int w1, int w2){
	cout << "****** SCORE ******\n" << n1[0] << n1[1] << n1[2] << n1[3] << ": " << t1[0] << "  |  " << n2[0] << n2[1] << n2[2] << n2[3] << ": " << t2[0] << "\n";
	if (w1 < 10){
		cout << "wins: " << w1 << "  |  " << "wins: " << w2 << "\n";
	}
	else if (w1 >= 10){
		cout << "wins: " << w1 << " |  " << "wins: " << w2 << "\n";
	}
	cout << "*******************" << endl;
	cout << endl;
}

int main()
{
	//Creating an array that holds the boards specs !
	char board[5][5] = { { '1', '|', '2', '|', '3' }, { '4', '|', '5', '|', '6' }, { '7', '|', '8', '|', '9' } };

	int i = 1;
	while (i == 1 || i == 2){
		//p1_name = first player name holder, 
		//p2_name = second players name holder, 
		//p1_tag = the first player`s tag holder, 
		//p2_tag = the second player`s tag holder !
		char p1_name[10], p2_name[10], p1_tag[1], p2_tag[1];
		// Intro to the game ( writing some none importain things :D ):
		cout << "**********\\ Let`s play Tic-Tac-Toe /**********" << endl;
		cout << endl;
		cout << "First of all, we will start\nwith your names !!!" << endl;
		cout << endl;
		cout << "Player 1: ";
		cin >> p1_name;
		cout << "Player 2: ";
		cin >> p2_name;
		cout << endl;

		//Generating the players tag:
		srand(time(NULL));
		int ran_num = rand() % 20 + 1, p1_num, p2_num;
		cout << "Now " << p1_name << " & " << p2_name << "\nplease choose a number from 1 to 20 !!!" << endl;
		cout << endl;
		cout << p1_name << ": ";
		cin >> p1_num;
		while (p1_num < 1 || p1_num > 20){
			cout << "Please choose a number from 1 to 20: ";
			cin >> p1_num;
		}
		cout << p2_name << ": ";
		cin >> p2_num;
		while (p2_num < 1 || p2_num > 20){
			cout << "Please choose a number from 1 to 20: ";
			cin >> p2_num;
		}
		while (p2_num == p1_num){
			cout << "Please choose a number different from " << p1_name << "`s: ";
			cin >> p2_num;
		}
		cout << endl;
		cout << p1_name << " chose " << p1_num << ", " << p2_name << " chose " << p2_num << "\nand our lucky number is " << ran_num << " so..." << endl;
		cout << endl;

		//Checking which number is closer or grater than the random number:
		int r;
		if (ran_num == p1_num){
			player_choice_tag(p1_name, p1_tag, p2_tag);
			r = 1;
		}
		else if (ran_num == p2_num){
			player_choice_tag(p2_name, p2_tag, p1_tag);
			r = 2;
		}
		else if (p1_num < ran_num && p2_num > ran_num){
			player_choice_tag(p2_name, p2_tag, p1_tag);
			r = 2;
		}
		else if (p2_num < ran_num && p1_num > ran_num){
			player_choice_tag(p1_name, p1_tag, p2_tag);
			r = 1;
		}
		else if ((p1_num < ran_num && p2_num < ran_num) && p1_num < p2_num){
			player_choice_tag(p2_name, p2_tag, p1_tag);
			r = 2;
		}
		else if ((p1_num < ran_num && p2_num < ran_num) && p2_num < p1_num){
			player_choice_tag(p1_name, p1_tag, p2_tag);
			r = 1;
		}
		else if ((p1_num > ran_num && p2_num > ran_num) && p2_num < p1_num){
			player_choice_tag(p2_name, p2_tag, p1_tag);
			r = 2;
		}
		else if ((p1_num > ran_num && p2_num > ran_num) && p1_num < p2_num){
			player_choice_tag(p1_name, p1_tag, p2_tag);
			r = 1;
		}

		//Score board:
		int p1_win_count = 0, p2_win_count = 0, n = 0, x = 0;
		i = 1;
		while (i == 1){
			board[0][0] = '1';
			board[0][2] = '2';
			board[0][4] = '3';
			board[1][0] = '4';
			board[1][2] = '5';
			board[1][4] = '6';
			board[2][0] = '7';
			board[2][2] = '8';
			board[2][4] = '9';
			score_board(p1_name, p2_name, p1_tag, p2_tag, p1_win_count, p2_win_count);
			print_board(board);
			if (x == 0){
				cout << "Now all you need to do is\nchoose a number that best fits your\ntactic and it will be replaced\nby \"X\" or \"O\" !!!" << endl;
				cout << endl;
			}
			else{
				cout << "Choose a number to replace it with\n\"X\" or \"O\" !!!" << endl;
				cout << endl;
			}
			if (r == 1 || n == 1){
				n = 0;
				player_possition(p1_name, board, p1_tag);
				player_possition(p2_name, board, p2_tag);
				player_possition(p1_name, board, p1_tag);
				player_possition(p2_name, board, p2_tag);
				player_possition(p1_name, board, p1_tag);
				win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
				if (n == 1 || n == 2 || n == 3){
					print_board(board);
				}
				else{
					player_possition(p2_name, board, p2_tag);
					win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
					if (n == 1 || n == 2 || n == 3){
						print_board(board);
					}
					else{
						player_possition(p1_name, board, p1_tag);
						win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
						if (n == 1 || n == 2 || n == 3){
							print_board(board);
						}
						else{
							player_possition(p2_name, board, p2_tag);
							win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
							if (n == 1 || n == 2 || n == 3){
								print_board(board);
							}
							else{
								player_possition(p1_name, board, p1_tag);
								win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
							}
						}
					}
				}
				if (n == 1){
					cout << p1_name << " is our WINNER !!!" << endl;
					cout << endl;
				}
				else if (n == 2){
					cout << p2_name << " is our WINNER !!!" << endl;
					cout << endl;
				}
				else{
					cout << "It`s a TIE !!!" << endl;
					cout << endl;
				}
			}
			else if (r == 2 || n == 2){
				n = 0;
				player_possition(p2_name, board, p2_tag);
				player_possition(p1_name, board, p1_tag);
				player_possition(p2_name, board, p2_tag);
				player_possition(p1_name, board, p1_tag);
				player_possition(p2_name, board, p2_tag);
				win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
				if (n == 1 || n == 2 || n == 3){
					print_board(board);
				}
				else{
					player_possition(p1_name, board, p1_tag);
					win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
					if (n == 1 || n == 2 || n == 3){
						print_board(board);
					}
					else{
						player_possition(p2_name, board, p2_tag);
						win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
						if (n == 1 || n == 2 || n == 3){
							print_board(board);
						}
						else{
							player_possition(p1_name, board, p1_tag);
							win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
							if (n == 1 || n == 2 || n == 3){
								print_board(board);
							}
							else{
								player_possition(p2_name, board, p2_tag);
								win_check(p1_win_count, p2_win_count, board, p1_tag, p2_tag, n);
							}
						}
					}
				}
				if (n == 1){
					cout << p1_name << " is our WINNER !!!" << endl;
					cout << endl;
				}
				else if (n == 2){
					cout << p2_name << " is our WINNER !!!" << endl;
					cout << endl;
				}
				else{
					cout << "It`s a TIE !!!" << endl;
					cout << endl;
				}
			}
			score_board(p1_name, p2_name, p1_tag, p2_tag, p1_win_count, p2_win_count);
			x++;
			cout << "What would you like to do: \nPlay another game(1) \nRestart the game(2) \nQuit game(3) \n--> ";
			cin >> i;
		}
	}
	return 0;
}

