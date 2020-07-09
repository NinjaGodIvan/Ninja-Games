# Ninja-Games

*Note: The game is closed due to debbuging errors to ensure the recovery of all player's data. The game will reopen once data recovery is efficient*

## About
Ninja Games is an arena battle game, where players and AIs battle in a field. There is no time limit of when the game will end. All ally and enemy AIs indefinitely respawn. 

### Level Up System
- Every new player starts with level 1 with no kills and XP.
- To level up, players have to kill enemies. They will gain certain amounts of XP depending on the difficulty of the enemy.
- Players rank up everytime they reach a 1000XP interval. For example, if a player reaches at 1000XP or over, he will be Level 2.
- There is no max level in this game.

### Player's Health
- Every new player starts with 100HP.
- Players' HP gets added up by 50HP and has their HPs regenerated everytime they level up.

## Development
**Tools:** RobloxStudios, Lua, DataStore2

### Implementations
- Lobby and battle maps, and AI models
- Save/Load API allowing to save players' level, kills, and XP when they leave and load them when they join the server
- Level-Up system that level ups players when they reached their target XP

### Bug Fixes
- AIs do not inflict damage to other players and AIs if their health is 0
- AIs are able to respawn with correct durations.
- Players no longer encounter their data loss when they join and leave the game
