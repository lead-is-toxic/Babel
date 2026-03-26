## Remove id field (redundant now)
data remove storage babel:temp root.manifest.id

## Insert new wiki into database
$data modify storage babel:database wiki.$(id) set from storage babel:temp root.manifest