execute as @a[scores={sacrifice=1}] store result score count variables run clear @s minecraft:player_head 0

# Shows list of options
execute as @a[scores={sacrifice=1}] run tellraw @s {"text":"--- Sacrifice ---","color":"red","bold":true,"underlined":true}
execute as @a[scores={sacrifice=1}] run tellraw @s [{"text":"You must get ","italic":true},{"score":{"name":"sacrifice_req","objective":"constants"},"italic":true},{"text":" heads to perform a ritual","italic":true}]
execute as @a[scores={sacrifice=1}] run tellraw @s [{"text":"Unbreaking","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger unbreaking"}},{"text":": Makes an item unbreakable.","color":"white"}]


scoreboard players set @a sacrifice 0
scoreboard players enable @a sacrifice