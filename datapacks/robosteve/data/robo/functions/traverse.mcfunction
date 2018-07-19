# moves through the line of "commands" the use put down and toggles the respective action.
#
# this function is called whenever the previous action was finished and the aec has the "traverse" tag

#resets for the action to work properly
tag @s remove traverse
scoreboard players set @s timer 0

#move forward one block
execute at @s run teleport @s ~1 ~ ~
teleport @e[type=shulker,tag=highlight] @s

#set appropriate tag
execute at @s if block ~ ~ ~ minecraft:white_wool run tag @s add move_forward
execute at @s if block ~ ~ ~ minecraft:orange_wool run tag @s add rotate

#finished traversing, remove aec
execute at @s if block ~ ~ ~ air run say done
execute at @s if block ~ ~ ~ air run teleport @e[type=shulker,tag=highlight] 0 -500 0
execute at @s if block ~ ~ ~ air run kill @s

#reset robot
execute at @s if block ~ ~ ~ air run teleport @e[type=armor_stand,tag=robot] -10 4 5 -90 0

#move highlight shulker