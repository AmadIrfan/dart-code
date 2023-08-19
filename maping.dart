void main(List<String> args) {
  List<Map<String, dynamic>> strg = [
    {
      "name": "Amad irfan",
      "list": [
        {
          "index": "11",
          'score': 12,
        },
        {
          "index": "12",
          'score': 15,
        }
      ],
    },
    {
      "name": "saad irfan",
      "list": [
        {
          'index': "21",
        },
        {
          'index': "22",
        }
      ],
    }
  ];

  for (var i in strg) {
    print(i['list'][0]['index']);
  }
}
