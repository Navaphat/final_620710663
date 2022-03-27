class Item {
  final String image_url;
  final String answer;
  final List<String> choices;

  Item({
    required this.image_url,
    required this.answer,
    required this.choices,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      image_url: json['image_url'],
      answer: json['answer'],
      choices: List<String>.from(json['choices']),
    );
  }
}

