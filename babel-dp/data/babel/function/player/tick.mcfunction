## When player uses a written book, check if it is a wiki book
execute if score @s babel.use_written_book matches 1.. run function babel:wiki/check_book

## Make triggers trigger when triggered
execute if predicate babel:entity_scores/trigger run function babel:wiki/trigger/main