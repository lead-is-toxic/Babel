data remove storage babel:temp root

## Set specified values in 
$data modify storage babel:temp root.manifest set value $(page_template)

## Call function to prepare new wiki for database
data modify storage babel:temp root.macro.id set from storage babel:temp root.manifest.id
function babel:wiki/technical/manifest/page_template/finalize with storage babel:temp root.macro

data remove storage babel:temp root