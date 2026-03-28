## Creates a wiki
## Explain later
## Don't forget to explain defaults
function babel:api/manifest/wiki {\
    id: "babel:example",\
    wiki: {\
    scoreboard: "babel.wiki.example",\
    body_width: 120,\
    offsets: {\
        lines_before_contents: 0,\
        lines_after_contents: 0\
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
## Also don't forget alias prefixes and suffixes exist
function babel:api/manifest/page_template {page_template:{\
    id: "babel:monologue",\
    aliases: [\
        {element: "title", alias: "title", "target": "translate"},\
        {element: "body", alias: "translate", "target": "translate"},\
        {element: "body", alias: "with", "target": "with"}\
        ],\
    elements: [\
        {id: "title", type: "text_component", structure: {}},\
        {type: "header", header: "top_header"},\
        {id: "body", type: "text_component", structure: {}},\
        {type: "header", header: "bottom_header"}\
        ]\
    }}

## Creates a page
## Explain later
function babel:api/manifest/page {\
    wiki: "babel:example",\
    template: "babel:monologue",\
    page: {\
    offsets: {\
        lines_before_contents: 0,\
        lines_after_contents: 3\
    },\
    contents: {\
        title: "wiki.babel.page.page_template_monologue.title",\
        translate: "wiki.babel.page.page_template_monologue.body"\
    }}}

function babel:api/manifest/page {\
    wiki: "babel:example",\
    template: "babel:monologue",\
    page: {\
    offsets: {\
        lines_before_contents: 0,\
        lines_after_contents: 3\
    },\
    contents: {\
        title: "TITLE",\
        translate: "RELATIVELY LONG BODY SO THAT THE ENTIRE PAGE RENDERS AND I CAN WAIT A LITTLE LONGER BEFORE IMPLEMENTING LINE BREAK OVERRIDES IN PAGES THIS PROBABLY ISN'T LONG ENOUGH YET BUT I'M NOT ENTIRELY SURE"\
    }}}
