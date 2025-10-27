class BmiInputModel {
  String gender;
  double height;
  int weight;
  int age;

  BmiInputModel({
    this.gender = "Male",
    this.height = 174,
    this.weight = 70,
    this.age = 30,
  });
  @override
  String toString() {
    return "Gender: $gender, Height: ${height.round()}, Weight: $weight, Age: $age";
  }



  double calculateBmi() {

    return weight / (height * height);
  }
}
