class AA{
  int id;
  AA(this.id);



  factory AA.fromJson(Map<String, dynamic> json) {
    return AA(
      json["id"],
    );
  }



  Map<String, dynamic> toJson() {
    return {
      "id": id,
    };
  }
}
