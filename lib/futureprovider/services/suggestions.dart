class Suggestions {
  String? activity;
  String? type;
  String? link;
  String? key;
  double? accessibility;

  Suggestions(
      {this.activity, this.type, this.link, this.key, this.accessibility});

  Suggestions.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    type = json['type'];
    link = json['link'];
    key = json['key'];
    accessibility = json['accessibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['activity'] = activity;
    data['type'] = type;
    data['link'] = link;
    data['key'] = key;
    data['accessibility'] = accessibility;
    return data;
  }
}
