data remove storage babel:temp root

## Set default values
data modify storage babel:temp root.manifest set value {\
    spaces: {\
        before_contents: 0,\
        after_contents: 0\
    },\
    fonts: {\
        text: "minecraft:default",\
        text_alt: "minecraft:default"\
    },\
    pages: []\
    }

## Merge provided values with default values
$data modify storage babel:temp root.manifest merge value $(wiki)

## Prepare macro and run to finalize wiki
data modify storage babel:temp root.macro.id set from storage babel:temp root.manifest.id
function babel:wiki/manifest/wiki/finalize with storage babel:temp root.macro

data remove storage babel:temp root