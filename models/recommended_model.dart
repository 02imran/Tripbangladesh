class RecommendedModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;

  RecommendedModel(
      this.name, this.tagLine, this.image, this.images, this.description);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['tagLine'],
        item['image'], item['images'], item['description']))
    .toList();

var recommendationsData = [
  {
    "name": "St. Martin's Island",
    "tagLine": "St. Martin's Island",
    "image":
        "https://images.unsplash.com/photo-1591152073494-0b166075650a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1480&q=80",
    "images": [
      "https://images.unsplash.com/photo-1591152073494-0b166075650a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1480&q=80",
      "https://images.unsplash.com/photo-1549048144-899e8172ca6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1590185105286-a144b8c23fe4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=306&q=80",
      "https://images.unsplash.com/photo-1497632689487-5ff95ff86b7a?ixlib=rb-1.2.1&auto=format&fit=crop&w=891&q=80",
      "https://images.unsplash.com/photo-1585486786683-9718bc07a405?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80"
    ],
    "description":
        "St. Martin's Island is a small island in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox's Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh. There is a small adjoining island that is separated at high tide, called Chera Dwip.",
  },
  {
    "name": "Cox's Bazar",
    "tagLine": "Cox's Bazar",
    "image":
        "https://images.unsplash.com/photo-1590603740183-980e7f6920eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80",
    "images": [
      "https://images.unsplash.com/photo-1590603740183-980e7f6920eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80",
      "https://images.unsplash.com/photo-1592321025971-b51d70f8ce17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
      "https://images.unsplash.com/photo-1562627076-d3f2ef96446c?ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80",
      "https://images.unsplash.com/photo-1499832066490-38f38eb0ff88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
      "https://images.unsplash.com/photo-1584268522967-c85ae5cf7c5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    ],
    "description":
        "Cox’s Bazar is a town on the southeast coast of Bangladesh. It’s known for its very long, sandy beachfront, stretching from Sea Beach in the north to Kolatoli Beach in the south. Aggameda Khyang monastery is home to bronze statues and centuries-old Buddhist manuscripts. South of town, the tropical rainforest of Himchari National Park has waterfalls and many birds. North, sea turtles breed on nearby Sonadia Island.",
  },
  {
    "name": "Sajek Valley",
    "tagLine": "Sajek Valley",
    "image":
        "https://images.unsplash.com/photo-1578128178075-a7fbe741fcf7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    "images": [
      "https://images.unsplash.com/photo-1578128178075-a7fbe741fcf7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
      "https://images.unsplash.com/photo-1578128178799-ffbb862243c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1578128175281-ede78bbf24f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=326&q=80",
      "https://images.unsplash.com/photo-1594019607913-f5b4d6e5f690?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
      "https://images.unsplash.com/photo-1578128178799-ffbb862243c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
    ],
    "description":
        "Sajek Valley - সাজেক ভ্যালি / মেঘের উপত্যকায় জীবন is an emerging tourist spot in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,476 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.",
  },
  {
    "name": "Kuakata Sea Beach",
    "tagLine": "Kuakata Sea Beach",
    "image":
        "https://images.unsplash.com/photo-1601560496330-b654cca141d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=890&q=80",
    "images": [
      "https://images.unsplash.com/photo-1601560496330-b654cca141d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=890&q=80",
      "https://images.unsplash.com/photo-1563266090-e387617fcd98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=237&q=80",
      "https://images.unsplash.com/photo-1454391304352-2bf4678b1a7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.voubs.com%2Fphoto%2Fkuakata-sea-beach-bangladesh%2F8f639dc5332a727dbfc727ab476fd958&psig=AOvVaw1bmloB84Lq5G6oCnGu3D67&ust=1602860807392000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDp0vvvtuwCFQAAAAAdAAAAABA5",
      "https://images.unsplash.com/photo-1500375592092-40eb2168fd21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
    ],
    "description":
        "The name Kuakata originated from the word Kua English word “Well” dug on the sea shore by the early Rakhine settlers in quest of collecting drinking water, who landed on Kuakata coast after getting expelled from the Arakan (Myanmar) by Moughals. Afterwards, it has become a tradition of digging Kua-Well in the neighborhood of Rakhaine tribes for water.",
  },
  {
    "name": "Nafa-khum Waterfalls",
    "tagLine": "Nafa-khum Waterfalls",
    "image":
        "https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/936817i188868821F94F617?v=1.0",
    "images": [
      "https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/936817i188868821F94F617?v=1.0"
          "https://images.unsplash.com/flagged/photo-1575557173660-7062f2c287b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
      "https://images.unsplash.com/photo-1564500604132-ecfb1ffc57a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    ],
    "description":
        "Nafa-khum is a waterfall in Bangladesh on the Remaikree River, a tributary of the Sangu River. It is among the largest waterfalls in the country by volume of water falling. The wild hilly Remaikree river suddenly falls down here about 25–30 feet.",
  },
];
