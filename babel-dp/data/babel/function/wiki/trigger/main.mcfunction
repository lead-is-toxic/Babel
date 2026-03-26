execute if score @s babel.trigger matches -3 run dialog clear @s

execute unless score @s babel.trigger matches -4..-3 run function babel:wiki/render/main

scoreboard players reset @s babel.trigger
scoreboard players enable @s babel.trigger