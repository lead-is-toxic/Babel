data remove storage babel:temp root

## Set specified values
$data modify storage babel:temp root.manifest set value $(page_template)

## Prepare macro and run to finalize page template
data modify storage babel:temp root.macro.id set from storage babel:temp root.manifest.id
function babel:wiki/manifest/page_template/finalize with storage babel:temp root.macro

data remove storage babel:temp root