execute at @s run summon marker ~ ~ ~ {Tags:[dpos.target]}
execute at @s as @e[type=marker,tag=dpos.target,limit=1,sort=nearest] run function death_pos:tp/tp