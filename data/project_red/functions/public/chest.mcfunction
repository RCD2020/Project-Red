execute as @a[scores={chest=1}] run give @s minecraft:chest{display:{Name:'[{"text":"Death Chest","color":"gray","bold":true}]'}} 1
execute as @a[scores={chest=1}] run scoreboard players set @s chest 0
scoreboard players enable @a chest