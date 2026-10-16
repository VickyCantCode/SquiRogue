class Entity {
    name = ""
    hp = 0
    maxHp = 0
    atk = 0
    x = 0
    y = 0

    constructor(n, h, a, px, py) {
        name = n
        hp = h
        maxHp = h
        atk = a
        x = px
        y = py
    }

    function isAlive() {
        return hp > 0
    }

    function takeDamage(dmg) {
        hp -= dmg
        if (hp < 0) hp = 0
        return hp
    }
}

class Dungeon {
    width = 20
    height = 10
    grid = null

    constructor(w, h) {
        width = w
        height = h
        grid = []
        for (local y = 0; y < height; y++) {
            local row = []
            for (local x = 0; x < width; x++) {
                if (x == 0 || x == width - 1 || y == 0 || y == height - 1) {
                    row.append("#")
                } else {
                    row.append(".")
                }
            }
            grid.append(row)
        }
    }

    function render(player, enemy) {
        for (local y = 0; y < height; y++) {
            local line = ""
            for (local x = 0; x < width; x++) {
                if (player.x == x && player.y == y) line += "@"
                else if (enemy.isAlive() && enemy.x == x && enemy.y == y) line += "E"
                else line += grid[y][x]
            }
            print(line + "\n")
        }
    }
}

local player = Entity("Hero", 30, 8, 3, 3)
local goblin = Entity("Goblin", 15, 4, 7, 5)
local map = Dungeon(20, 10)

print("Starting SquiRogue...\n")
map.render(player, goblin)

while (player.isAlive() && goblin.isAlive()) {
    print(player.name + " strikes " + goblin.name + " for " + player.atk + " damage!\n")
    goblin.takeDamage(player.atk)
    if (!goblin.isAlive()) {
        print(goblin.name + " has been defeated!\n")
        break
    }
    print(goblin.name + " strikes " + player.name + " for " + goblin.atk + " damage!\n")
    player.takeDamage(goblin.atk)
    print("HP: " + player.name + " (" + player.hp + ") | " + goblin.name + " (" + goblin.hp + ")\n")
}
print("Game Over: " + (player.isAlive() ? "Victory!" : "Defeat.") + "\n")
