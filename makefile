run : app.exe
	./app.exe

app.exe : main.c
	$(CC) -std=c99 -o $@ $^
