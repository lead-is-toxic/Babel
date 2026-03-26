## Create new scores
scoreboard objectives add babel.dummy dummy
scoreboard objectives add babel.trigger trigger
scoreboard objectives add babel.use_written_book minecraft.used:minecraft.written_book

## Schedule chat list
schedule function babel:technical/list/scheduled 1s

## We need to implement a config option to disable wiki generation to improve reload speeds

## Clear database before 
data remove storage babel:database wiki

## Manifest wikis - put all wiki manifests in here
function #babel:manifest/wiki