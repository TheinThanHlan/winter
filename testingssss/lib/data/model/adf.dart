class adf{
  int id;
  adf(this.id);



  factory adf.fromJson(Map<String, dynamic> json) {
    return adf(
      json["id"],
    );
  }



  Map<String, dynamic> toJson() {
    return {
      "id": id,
    };
  }
}
