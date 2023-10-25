import 'package:flutter/material.dart';
import 'package:project/src/constants/color.dart';
import 'package:project/src/constants/size.dart';
import 'package:project/src/features/core/models/dashboard/courses_model.dart';

class DashboardTopCourse extends StatelessWidget {
  const DashboardTopCourse({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCoursesModel.list;

    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tCardBgColor,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          list[index].title,
                          style: txtTheme.headline6,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: Image(
                          image: AssetImage(list[index].imageText),
                          width: 80,
                          height: 110,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                        child:const  Icon(Icons.play_arrow),
                      ),
                      const SizedBox(width: tDashboardCardPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].sectionCounter,
                            style: txtTheme.headline4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            list[index].typeOfCourse,
                            style: txtTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
