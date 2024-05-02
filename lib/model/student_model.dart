class StudentModel {
  final String fname;
  final String lname;
  final String address;

  StudentModel({
    required this.fname,
    required this.lname,
    required this.address,
  });

  String save() {
    return "Student name is $fname $lname and address is $address";
  }
}
