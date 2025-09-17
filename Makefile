.PHONY: run clean 

CFLAGS := -Wall -std=c++17 -I"./libs/" $(shell pkg-config --cflags --libs sdl2) $(shell pkg-config --cflags --libs lua5.3)

gameengine:
	g++ ${CFLAGS} src/*.cpp -o gameengine

compile_flags.txt:
	echo ${CFLAGS} | tr ' ' '\n' > compile_flags.txt

run:
	./gameengine

clean:
	rm -f gameengine compile_flags.txt

