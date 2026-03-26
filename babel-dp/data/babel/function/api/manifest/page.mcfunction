data remove storage babel:temp root

## Set specified values
$data modify storage babel:temp root.manifest set value $(page)

## Call function to prepare new wiki for database
data modify storage babel:temp root.macro.wiki set from storage babel:temp root.manifest.wiki
data modify storage babel:temp root.macro.template set from storage babel:temp root.manifest.template
function babel:wiki/manifest/page/get_references with storage babel:temp root.macro
data remove storage babel:temp root.macro

## Don't forget to uncomment this later
# data remove storage babel:temp root