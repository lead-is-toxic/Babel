data remove storage babel:temp root

## Set default values
data modify storage babel:temp root.manifest set value {\
    body_width: 120,\
    offsets: {\
        before_contents: 0,\
        after_contents: 0\
    },\
    fonts: {\
        text: "minecraft:default",\
        text_alt: "minecraft:default"\
    },\
    colors: {\
        text: "black",\
        text_shadow: [0, 0, 0, 0]\
    },\
    pages: []\
    }

## Merge provided values with default values
$data modify storage babel:temp root.manifest merge value $(wiki)

## Prepare macro and run to finalize wiki
data modify storage babel:temp root.macro.id set from storage babel:temp root.manifest.id
function babel:wiki/manifest/wiki/finalize with storage babel:temp root.macro

$data modify storage babel:database wiki.$(id) set from storage babel:temp root.manifest

data remove storage babel:temp root