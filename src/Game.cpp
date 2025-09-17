#include "Game.h"
#include <SDL2/SDL.h>
#include <iostream>

Game::Game() { std::cout << "game constructor called!" << std::endl; }

Game::~Game() { std::cout << "game destructor called!" << std::endl; }

void Game::Initialize() {
  if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
    std::cerr << "Error initializing SDL." << std::endl;
    return;
  };
  SDL_Window *window =
      SDL_CreateWindow(NULL, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                       800, 600, SDL_WINDOW_BORDERLESS);
  if (!window) {
    std::cerr << "Error creating SDL window." << std::endl;
    return;
  }

  SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, 0);
  if (!renderer) {
    std::cerr << "Error creating SDL renderer." << std::endl;
    return;
  }
}

void Game::Run() {
  while (true) {
    ProcessInput();
    Update();
    Render();
  }
}

void Game::ProcessInput() {
  // TODO
}

void Game::Update() {
  // TODO
}

void Game::Render() {
  // TODO
}

void Game::Destroy() {
  // TODO
}
