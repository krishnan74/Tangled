
class CourseModelConsultation {
  String name;
  String description;
  String university;
  String noOfCource;
  String tag1;
  String tag2;

  CourseModelConsultation(
      {required this.name,
        required this.description,
        required this.noOfCource,
        required this.university,
        required this.tag1,
        required this.tag2});
}

class CourseList {
  static List<CourseModelConsultation> list = [
    CourseModelConsultation(
        name: "Ashwin",
        description:
        "",
        university: "",
        noOfCource: "",
        tag1: "Accept",
        tag2: "Decline"),
    CourseModelConsultation(
        name: "Kumar",
        description:
        "",
        university: "",
        noOfCource: "",
        tag1: "Accept",
        tag2: "Decline"),
    CourseModelConsultation(
        name: "Jeena",
        description:
        "",
        university: "",
        noOfCource: "",
        tag1: "Accept",
        tag2: "Decline"),
  ];
}
