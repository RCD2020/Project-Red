### Add scoreboards
scoreboard objectives add seconds dummy
scoreboard objectives add minutes dummy "Minutes"
scoreboard objectives add hours dummy
scoreboard objectives add days dummy
scoreboard objectives add kills totalKillCount "Kills"
scoreboard objectives add deaths deathCount
scoreboard objectives add constants dummy
scoreboard objectives add variables dummy
scoreboard objectives add total_seconds dummy

scoreboard objectives add last_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add death_minutes dummy

scoreboard objectives add heads dummy

### Set constants
scoreboard players set hours constants 60
scoreboard players set days constants 24
scoreboard players set sacrifice_req constants 10
# For announcement of life
scoreboard players set minute_ticks constants 1200
scoreboard players set announcement constants 36000

### Set variables
#scoreboard players set loaded variables 1

### Set display
#scoreboard objectives setdisplay sidebar seconds
scoreboard objectives setdisplay list minutes