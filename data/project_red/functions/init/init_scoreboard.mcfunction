### Add scoreboards
scoreboard objectives add seconds dummy
scoreboard objectives add minutes dummy "Minutes"
scoreboard objectives add hours dummy
scoreboard objectives add days dummy
scoreboard objectives add kills totalKillCount "Kills"
scoreboard objectives add deaths deathCount
scoreboard objectives add constants dummy
scoreboard objectives add total_seconds dummy
scoreboard objectives add display trigger
scoreboard players enable @a display

### Set constants
scoreboard players set hours constants 60
scoreboard players set days constants 24

### Set display
#scoreboard objectives setdisplay sidebar seconds
scoreboard objectives setdisplay list minutes
