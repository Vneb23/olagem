default: olagem

olagem: main.o terminal_printer.o screen_tools.o endscreen.o startscreen.o settings.o
	gcc -g -llua -lncursesw main.o terminal_printer.o screen_tools.o endscreen.o startscreen.o settings.o -o olagem 

main.o: main.c
	gcc -c -lncursesw main.c


terminal_printer.o: terminal_printer.c terminal_printer.h
	gcc -c -lncursesw terminal_printer.c 

screen_tools.o: screen_tools.c screen_tools.h
	gcc -c -lncursesw screen_tools.c

endscreen.o: endscreen.c endscreen.h
	gcc -c -lncursesw endscreen.c

startscreen.o: startscreen.c startscreen.h
	gcc -c -lncursesw startscreen.c

settings.o: settings.c settings.h
	gcc -c -lncursesw settings.c

clean:
	rm *.o
