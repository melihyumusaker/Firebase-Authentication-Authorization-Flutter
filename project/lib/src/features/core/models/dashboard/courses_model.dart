import 'package:project/src/constants/image_strings.dart';

class DashboardCoursesModel {
  final String title;
  final String imageText;
  final String sectionCounter;
  final String typeOfCourse;

  DashboardCoursesModel(
      this.title, this.imageText, this.sectionCounter, this.typeOfCourse);

  static List<DashboardCoursesModel> list = [
    DashboardCoursesModel('Flutter Crash Course', tTopCourseImage1,
        "3 Sections", 'Programming Languages'),
    DashboardCoursesModel('Adobe Illustrator', tTopCourseImage2, "8 Sections",
        'Program and Design'),
    DashboardCoursesModel(
        'English', tTopCourseImage3, "5 Sections", 'Language'),
  ];
}
