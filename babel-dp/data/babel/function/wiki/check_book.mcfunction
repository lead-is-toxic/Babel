## Reset scores
scoreboard players reset @s babel.use_written_book

## If player is using a wiki book then use the wiki book
execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] run function babel:wiki/render/main