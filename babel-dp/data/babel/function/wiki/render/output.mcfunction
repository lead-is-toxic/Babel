$dialog show @s {\
  "type": "minecraft:server_links",\
  "title": $(wiki_name),\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {"translate": "babel.line.$(lines_before_contents)"},$(elements),{"translate": "babel.line.$(lines_after_contents)"}\
      ],\
      "width": 118\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": ""\
      },\
      "width": 200\
    }\
  ],\
  "pause": false,\
  "after_action":"none"\
}