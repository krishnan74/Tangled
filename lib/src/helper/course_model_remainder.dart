

class CourseModelRemainder {
  String name;
  String description;
  String university;
  String noOfCource;
  String tag1;
  String tag2;

  CourseModelRemainder(
      {required this.name,
        required this.description,
        required this.noOfCource,
        required this.university,
        required this.tag1,
        required this.tag2});
}

class CourseList {
  static List<CourseModelRemainder> list = [
    CourseModelRemainder(
        name: "Ashwin",
        description:
        "",
        university: "",
        noOfCource: "",
        tag1: "Consult",
        tag2: ""),
    CourseModelRemainder(
        name: "Kumar",
        description:
        "",
        university: "",
        noOfCource: "",
        tag1: "Consult",
        tag2: ""),
    CourseModelRemainder(
        name: "Jeena",
        description:
        "",
        university: "",
        noOfCource: "",
        tag1: "Consult",
        tag2: ""),
  ];
}
