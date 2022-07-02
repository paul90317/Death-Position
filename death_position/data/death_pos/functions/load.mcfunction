scoreboard objectives add dpos.death deathCount
scoreboard objectives add dpos.x dummy
scoreboard objectives add dpos.y dummy
scoreboard objectives add dpos.z dummy
scoreboard objectives add dpos.dim dummy
scoreboard objectives add dpos.ret dummy

scoreboard objectives add dpos.cf.tp dummy
execute unless score #world dpos.cf.tp = #world dpos.cf.tp run scoreboard players set #world dpos.cf.tp 1