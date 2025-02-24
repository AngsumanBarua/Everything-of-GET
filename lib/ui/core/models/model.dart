class MyModel {
  String name;
  int id;
  List<String> children;

  // Constructor
  MyModel({
    required this.name,
    required this.id,
    required this.children,
  });

  // Factory method to create an object from JSON
  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      name: json['name'],
      id: json['id'],
      children: List<String>.from(json['children'] ?? []),
    );
  }

  // Method to convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'children': children,
    };
  }
}
