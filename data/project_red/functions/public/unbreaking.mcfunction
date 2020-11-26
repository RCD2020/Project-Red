execute as @a[scores={unbreaking=1}] store result score @s variables run clear @s minecraft:golden_apple{CustomModelData:100} 0

execute as @a[scores={unbreaking=1}] at @s if entity @e[limit=1,distance=..5,type=minecraft:item] if score @s variables matches 10.. run data modify entity @e[type=minecraft:item,limit=1,distance=..3] Item.tag.Unbreakable set value 1
execute as @a[scores={unbreaking=1}] at @s if entity @e[limit=1,distance=..5,type=minecraft:item] if score @s variables matches 10.. run clear @s minecraft:golden_apple{CustomModelData:100} 10
#execute as @a[scores={unbreaking=1}] if entity @e[limit=1,distance=..5,type=minecraft:item] if score @s variables matches 10.. run say hi

scoreboard players set @a unbreaking 0
scoreboard players enable @a unbreaking