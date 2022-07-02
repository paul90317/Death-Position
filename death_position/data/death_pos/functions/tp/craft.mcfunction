clear @s knowledge_book 1
advancement revoke @s only death_pos:tp_craft
recipe take @s death_pos:tp_craft
execute if score #world dpos.cf.tp matches 1 run function death_pos:tp/check
execute if score #world dpos.cf.tp matches 0 run function death_pos:tp/disable