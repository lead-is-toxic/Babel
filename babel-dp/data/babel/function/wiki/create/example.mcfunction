## Creates a wiki
## Explain later
function babel:api/manifest/wiki {wiki:{\
    id: "babel:example",\
    offsets: {\
        lines_before_contents: 0,\
        lines_after_contents: 20\
    },\
    fonts: {\
        ui: "babel:wiki/example",\
        text: "minecraft:default"\
    },\
    text_color: "#9a7256",\
    elements: {\
        background: {character: "\ua001", width: 146},\
        previous_button: {character: "\ua002", width: 18},\
        next_button: {character: "\ua003", width: 18},\
        close_button: {character: "\ua004", width: 18},\
        take_button: {character: "\ua005", width: 18},\
        frame: {character: "\ua006", width: 20},\
        top_header: {character: "\ua007", width: 101},\
        bottom_header: {character: "\ua008", width: 108},\
        index_background: {character: "\ua009", width: 88}\
    }}}

## Creates a page template
## Explain later
## Don't forget to mention that page templates are independant of wiki
function babel:api/manifest/page_template {page_template:{\
    id: "babel:monologue",\
    aliases: [\
        {element: "body", alias: "translate", "target": "translate"},\
        {element: "body", alias: "text", "target": "text"}\
        ],\
    elements: [\
        "top_header",\
        {id: "body", type: "text_component", fields: {}},\
        "bottom_header"\
        ]\
    }}

## Creates a page
## Explain later
function babel:api/manifest/page {page:{\
    wiki: "babel:example",\
    template: "babel:monologue",\
    fields: {\
        translate: "wiki.babel.page.page_template_monologue.body"\
    }}}