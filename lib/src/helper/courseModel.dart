class CourseModel {
  String name;
  String description;
  String university;
  String noOfCource;
  String tag1;
  String tag2;

  CourseModel(
      {required this.name,
      required this.description,
      required this.noOfCource,
      required this.university,
      required this.tag1,
      required this.tag2});
}

class CourseList {
  static List<CourseModel> list = [
    CourseModel(
        name: "Ashwin",
        description:
            "Medication:\n\tParacetamol         25mg\n\tMorning         once",
        university: "23yr, Male",
        noOfCource: "3 Sessions",
        tag1: "PatientID: 23A021",
        tag2: ""),
    CourseModel(
        name: "Kumar",
        description:
            "Medication:\n\tParacetamol         25mg\n\tMorning         once",
        university: "64yr Male",
        noOfCource: "5 Sessions",
        tag1: "PatientID: 23B041",
        tag2: ""),
    CourseModel(
        name: "Jeena",
        description:
            "Medication:\n\tParacetamol         25mg\n\tMorning         once",
        university: "20yr Female",
        noOfCource: "2 Sessions",
        tag1: "PatientID: 23A231",
        tag2: ""),
  ];
}
