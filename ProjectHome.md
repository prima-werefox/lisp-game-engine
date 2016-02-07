# Lisp Game Engine #

## Summary ##

This is an experiment in interactive game programming, by which I mean you can write code, create, add and remove game entities while the game is running.

The essence of the system is a data driven engine, where the main loop only updates objects (built of components). You make a game by adding objects to the engine's active components. Objects are containers holding a number of components. You can easily add your own components; the engine comes with a few that are useful such as text and animated sprites.

## Requirements ##

Requires a Common Lisp with ASDF, CFFI, and lispbuilder-sdl, as well as the SDL runtime libraries.

## Current Work ##

  * Animated and simple sprites
  * Basic 2d physics and collision
  * Object and component based architecture
  * Data driven engine
  * (WIP) Pong example game

## Future Work ##

  * On screen REPL
  * Some kind of editor; a way to get data into the game more visually
  * Sound and music via lispbuilder-sdl-mixer
  * Scrolling tile maps with transparency and parallax scrolling
  * Simple state machines or scripted behaviour
  * Flexible drawing system to allow draw order, transparency etc
  * OpenGl or Cal3d support (also Open Dynamics Engine)
