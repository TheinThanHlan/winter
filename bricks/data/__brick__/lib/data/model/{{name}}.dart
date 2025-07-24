class {{name}}{
  int id;
  {{name}}(this.id);



  factory {{name}}.fromJson(Map<String, dynamic> json) {
    return OCA(
      json["id"],
    );
  }



  Map<String, dynamic> toJson() {
    return {
      "id": id,
    };
  }
}
