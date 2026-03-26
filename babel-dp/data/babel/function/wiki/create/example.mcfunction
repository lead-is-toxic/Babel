## Creates a wiki
## Explain later
## Don't forget to explain defaults
function babel:api/manifest/wiki {wiki:{\
    id: "babel:example",\
    body_width: 120,\
    offsets: {\
        lines_before_contents: 0,\
        lines_after_contents: 5\
    },\
    fonts: {\
        ui: "babel:wiki/example",\
        text: "minecraft:default"\
    },\
    colors: {\
        text: "#9a7256",\
        text_shadow: [0, 0, 0, 0]\
    },\
    elements: {\
        background: {character: "\ua001", width: 149},\
        previous_button: {character: "\ua002", width: 18},\
        next_button: {character: "\ua003", width: 18},\
        close_button: {character: "\ua004", width: 18},\
        take_button: {character: "\ua005", width: 18},\
        frame: {character: "\ua006", width: 20},\
        top_header: {character: "\ua007", width: 115},\
        bottom_header: {character: "\ua008", width: 115},\
        index_background: {character: "\ua009", width: 88}\
    }}}

## Creates a page template
## Explain later
## Don't forget to mention that page templates are independant of wiki
function babel:api/manifest/page_template {page_template:{\
    id: "babel:monologue",\
    aliases: [\
        {element: "title", alias: "title", "target": "translate"},\
        {element: "body", alias: "translate", "target": "translate"},\
        {element: "body", alias: "text", "target": "text"},\
        {element: "body", alias: "with", "target": "with"}\
        ],\
    elements: [\
        {id: "title", type: "text_component", fields: {}},\
        {type: "header", header: "top_header"},\
        {id: "body", type: "text_component", fields: {}},\
        {type: "header", header: "bottom_header"}\
        ]\
    }}

## Creates a page
## Explain later
function babel:api/manifest/page {\
    wiki: "babel:example",\
    template: "babel:monologue",\
    page: {\
        title: "wiki.babel.page.page_template_monologue.title",\
        translate: "wiki.babel.page.page_template_monologue.body"\
    }}