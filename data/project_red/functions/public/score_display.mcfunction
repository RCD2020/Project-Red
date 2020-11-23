# disable trigger
scoreboard players reset @a[scores={display=0}] display

# Get total seconds
execute as @a[scores={display=1}] run scoreboard players operation @s total_seconds = @s minutes
execute as @a[scores={display=1}] run scoreboard players operation @s total_seconds *= hours constants
execute as @a[scores={display=1}] run scoreboard players operation @s total_seconds += @s seconds
execute as @a[scores={display=1}] run scoreboard players operation @s hours = @s minutes
execute as @a[scores={display=1}] run scoreboard players operation @s hours /= hours constants
execute as @a[scores={display=1}] run scoreboard players operation @s days = @s hours
execute as @a[scores={display=1}] run scoreboard players operation @s days /= days constants

execute as @a[scores={display=1}] run scoreboard players operation @s death_minutes = @s last_death
execute as @a[scores={display=1}] run scoreboard players operation @s death_minutes /= minute_ticks constants

# display scores
#execute as @a[scores={display=1}] run tellraw @s ["",{"text":"--- Scores ---","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"Stats","underlined":true,"color":"light_purple"},{"text":"\n"},{"score":{"name":"@s","objective":"kills"}},{"text":" kills","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"deaths"}},{"text":" deaths","color":"yellow"},{"text":"\n"},{"text":"Time","underlined":true,"color":"light_purple"},{"text":"\n"},{"score":{"name":"@s","objective":"total_seconds"}},{"text":" seconds","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"minutes"}},{"text":" minutes","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"hours"}},{"text":" hours","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"days"}},{"text":" days","color":"yellow"}]


execute as @a[scores={display=1}] run tellraw @s {"text":"--- Scores ---","bold":true,"underlined":true,"color":"red"}
execute as @a[scores={display=1}] run tellraw @s {"text":"Stats","underlined":true,"color":"light_purple"}
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"kills"}},{"text":" kills","color":"yellow"}]
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"deaths"}},{"text":" deaths","color":"yellow"}]
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"death_minutes"}},{"text":" minute(s) since last death","color":"yellow"}]
execute as @a[scores={display=1}] run tellraw @s {"text":"Time","underlined":true,"color":"light_purple"}
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"total_seconds"}},{"text":" seconds","color":"yellow"}]
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"minutes"}},{"text":" minutes","color":"yellow"}]
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"hours"}},{"text":" hours","color":"yellow"}]
execute as @a[scores={display=1}] run tellraw @s [{"score":{"name":"@s","objective":"days"}},{"text":" days","color":"yellow"}]

# enable trigger
scoreboard players reset @a display
scoreboard players enable @a display