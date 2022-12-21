#include <ncurses.h>

#include "screen_tools.h"

bool end_screen(int number_of_caracteres, long int time){
	clear();
	init();
	uint8_t ch;
	int number_of_words = (number_of_caracteres/4) * (60/time);
	printw("You have typed %d caracteres in %ld seconds\n\n", number_of_caracteres, time); 
	printw("This translate to %d WPM on 10FastFingers\n\n", number_of_words);
	printw("Press r to restart the game. Press q to quit");
	ch = getch();
	while (ch != 'q' && ch != 'r'){
		ch = getch();
	}
	clear();
	endwin();
	if (ch == 'q'){
		return false;
	}
	else {
		return true;
	}
}	
