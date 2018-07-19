# main function. run every tick.
# 
# 

#run the execution of the placed code
execute as @e[type=area_effect_cloud,tag=marker,tag=traverse] run function robo:traverse

execute as @e[type=area_effect_cloud,tag=marker,tag=!traverse,tag=move_forward] run function robo:actions/move_forward
execute as @e[type=area_effect_cloud,tag=marker,tag=!traverse,tag=rotate] run function robo:actions/rotate