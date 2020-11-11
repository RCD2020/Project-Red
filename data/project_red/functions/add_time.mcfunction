# Add second
scoreboard players add @a seconds 1

# Add minute
execute as @a if score @s seconds matches 60 run scoreboard players add @s minutes 1
execute as @a if score @s seconds matches 60 run scoreboard players remove @s seconds 60