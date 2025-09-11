build:
	g++ \
	-Wall \
	-std=c++17 \
	-I"./libs/" \
	`pkg-config --cflags --libs sdl2` \
	`pkg-config --cflags --libs lua5.3` \
	src/*.cpp \
	-o gameengine;

run:
	./gameengine

clean:
	rm gameengine


