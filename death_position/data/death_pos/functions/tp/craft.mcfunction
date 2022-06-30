clear @s knowledge_book 1
advancement revoke @s only death_pos:tp_craft
recipe take @s death_pos:tp_craft
execute at @s run summon marker ~ ~ ~ {Tags:[dpos.target]}
execute at @s as @e[type=marker,tag=dpos.target,limit=1,sort=nearest] run function death_pos:tp/tp