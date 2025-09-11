build:
	g++ -Wall -std=c++17 `pkg-config --cflags sdl2` `pkg-config --libs sdl2` src/*.cpp -o gameengine;

run:
	./gameengine

clean:
	rm gameengine


