execute store result score @s variables run clear @s minecraft:player_head 0

execute if score @s variables matches 10.. if entity @e[type=minecraft:item,limit=1,distance=..5] store result entity @e[type=minecraft:item,limit=1,distance=..5] Item.tag.CustomModelData int 1 run scoreboard players get @s custom_model_num
execute if score @s variables matches 10.. if entity @e[type=minecraft:item,limit=1,distance=..5] run clear @s minecraft:player_head 10

scoreboard players set @s custom 0
scoreboard players enable @s custom