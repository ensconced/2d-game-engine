.PHONY: run clean 

SRCS := $(wildcard src/*.cpp)
HEADERS := $(wildcard src/*.hpp)

CFLAGS := -Wall -std=c++17 -I"./libs/" $(shell pkg-config --cflags --libs sdl2 SDL2_image lua5.3)

gameengine: $(SRCS) $(HEADERS)
	g++ $(CFLAGS) $(SRCS) -o gameengine

compile_flags.txt:
	echo $(CFLAGS) | tr ' ' '\n' > compile_flags.txt

run: gameengine
	./gameengine

clean:
	rm -f gameengine compile_flags.txt

