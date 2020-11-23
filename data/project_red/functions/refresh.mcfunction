# Functions
function project_red:add_time
execute as @a if score @s display matches 1 run function project_red:public/score_display
execute as @a if score @s chest matches 1 run function project_red:public/chest

# Reschedule
schedule function project_red:refresh 1s