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

# display scores
execute as @a[scores={display=1}] run tellraw @s ["",{"text":"--- Scores ---","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"Stats","underlined":true,"color":"light_purple"},{"text":"\n"},{"score":{"name":"@s","objective":"kills"}},{"text":" kills","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"deaths"}},{"text":" deaths","color":"yellow"},{"text":"\n"},{"text":"Time","underlined":true,"color":"light_purple"},{"text":"\n"},{"score":{"name":"@s","objective":"total_seconds"}},{"text":" seconds","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"minutes"}},{"text":" minutes","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"hours"}},{"text":" hours","color":"yellow"},{"text":"\n"},{"score":{"name":"@s","objective":"days"}},{"text":" days","color":"yellow"}]


# enable trigger
scoreboard players reset @a display
scoreboard players enable @a display