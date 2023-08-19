

void main() {
  List<Map<String, Object>> questionList = [
    {
      "Question": "What is your Name ?",
      "Answer": [
        {'Name': 'AmadIrfan', 'Score': 13},
        {'Name': 'AmnaZafar', 'Score': 10},
        {'Na me': 'Moazam', 'Score': 8},
        {'Name': 'Yasir', 'Score': 7},
        {'Name': 'Aleeza', 'Score': 6}
      ],
    },
    {
      "Question": "What is your father Name ?",
      "Answer": [
        {'Name': 'Irfan Mehmood', 'Score': 13},
        {'Name': 'Zafar Ali', 'Score': 10},
        {'Name': 'Muhammad Asslam', 'Score': 8},
        {'Name': 'Zafar Ali', 'Score': 7},
        {'Name': 'Shakil Ahmad', 'Score': 6}
      ],
    },
    {
      "Question": "What is your Favorite Color ?",
      "Answer": [
        {'Name': 'Red', 'Score': 13},
        {'Name': 'Green', 'Score': 10},
        {'Name': 'Yellow', 'Score': 8},
        {'Name': 'Grey', 'Score': 7},
        {'Name': 'Blue', 'Score': 6}
      ],
    },
    {
      "Question": "What is your University ?",
      "Answer": [
        {'Name': 'UET', 'Score': 13},
        {'Name': 'Punjab', 'Score': 10},
        {'Name': 'UCP', 'Score': 8},
        {'Name': 'Fast U', 'Score': 7},
        {'Name': 'NUST U', 'Score': 6}
      ],
    },
    {
      "Question": "What is your City Name ?",
      "Answer": [
        {'Name': 'Bhakkar', 'Score': 13},
        {'Name': 'Lahore', 'Score': 10},
        {'Name': 'Islamabad', 'Score': 8},
        {'Name': 'Karachi', 'Score': 7},
        {'Name': 'Multan', 'Score': 6}
      ],
    },
  ];
  for (var v in questionList) {
    print(v['Question']);
  }
}
