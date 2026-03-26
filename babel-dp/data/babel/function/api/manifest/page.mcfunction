data remove storage babel:temp root

## Set specified values in 
$data modify storage babel:temp root.manifest set value $(page)

## Call function to prepare new wiki for database
data modify storage babel:temp root.macro.wiki set from storage babel:temp root.manifest.wiki
function babel:wiki/technical/manifest/page/get_wiki with storage babel:temp root.macro

## Don't forget to uncomment this later
# data remove storage babel:temp root