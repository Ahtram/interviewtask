class Task{
  String? title;
  String? date;
  String? priority;


  Task(
      {this.title,
        this.date,
        this.priority,});

  Task.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    date = json['date'];
    priority = json['priority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['date'] = this.date;
    data['priority'] = this.priority;
    return data;
  }
}