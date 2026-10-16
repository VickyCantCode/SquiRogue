# SquiRogue

A small turn-based dungeon roguelike runner experimenting with Squirrel scripting syntax and an in-browser ASCII canvas.

**Play Online:** [https://squirogue.vercel.app/](https://squirogue.vercel.app/)

## Why I made this

I was always curious about how lightweight game scripting languages like Squirrel work (it is used in engines like Source and multiplayer mods like VC:MP). So i wrote the core game mechanics and turn rules in `game.nut` first.

Then to make it easily playable for anyone without needing to install the Squirrel compiler, i made this lightweight browser runner with an ASCII grid and added on-screen touch controls so you can play it on phone also.

## Features

- Turn-based movement and combat mechanics (`@` player, `E` enemies, `#` dungeon walls).
- Clean HP and stats tracking with instant attack logs.
- Dual controls: use WASD / Arrow keys on keyboard, or tap the virtual D-Pad on touchscreens.
- Zero dependencies, loads instantly in any browser.

## How to play

Open `index.html` directly in your browser:

```bash
git clone https://github.com/VickyCantCode/squirogue.git
cd squirogue
# Open index.html in your browser
```

Controls:
- Up: `W` or `▲`
- Down: `S` or `▼`
- Left: `A` or `◀`
- Right: `D` or `▶`

Walk directly into an enemy `E` to strike them with your attack. Defeat all enemies to clear the dungeon!

(made with guidence from Gemini 3.8 Flash lol)

Made with ♥ by Vicky.
