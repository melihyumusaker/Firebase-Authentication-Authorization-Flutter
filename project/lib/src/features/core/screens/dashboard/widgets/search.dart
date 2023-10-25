import 'package:flutter/material.dart';
import 'package:project/src/constants/text_strings.dart';

class DashboardSearch extends StatelessWidget {
  const DashboardSearch({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 4),
        ),
      ),
      padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tDashboardSearch,
              style: txtTheme.headline4?.apply(
                color: Colors.grey.withOpacity(0.8),
              )),
          const Icon(Icons.mic, size: 25)
        ],
      ),
    );
  }
}
