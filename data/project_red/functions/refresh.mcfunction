# Functions
function project_red:add_time
execute as @a if score @s display matches 1 run function project_red:score_display

# Reschedule
schedule function project_red:refresh 1s