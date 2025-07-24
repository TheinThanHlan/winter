class {{name}}{
  int id;
  {{name}}(this.id);



  factory {{name}}.fromJson(Map<String, dynamic> json) {
    return {{name}}(
      json["id"],
    );
  }



  Map<String, dynamic> toJson() {
    return {
      "id": id,
    };
  }
}
