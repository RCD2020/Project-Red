# Functions
function project_red:add_time
execute as @a if score @s display matches 1 run function project_red:public/score_display
execute as @a if score @s chest matches 1 run function project_red:public/chest
execute as @a if score @s sacrifice matches 1 run function project_red:public/sacrifice
execute as @a if score @s unbreaking matches 1.. run function project_red:public/unbreaking
execute as @a at @s if score @s custom matches 1.. run function project_red:public/custom

# Reschedule
schedule function project_red:refresh 1s