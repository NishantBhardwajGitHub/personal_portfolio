import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectsgridView(crossaxiscount: 1,childaspectratio: 1.7,),
          mobileLarge: ProjectsgridView(crossaxiscount: 2,),
          desktop: ProjectsgridView(),
          tablet: ProjectsgridView(childaspectratio: 1.1,),
        )
      ],
    );
  }
}

class ProjectsgridView extends StatelessWidget {
  const ProjectsgridView({
    Key? key,
    this.crossaxiscount = 3,
    this.childaspectratio = 1.3,
  }) : super(key: key);
  final int crossaxiscount;
  final double childaspectratio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossaxiscount,
          childAspectRatio: childaspectratio ,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) =>
          projectcard(project: demo_projects[index]),
    );
  }
}

class projectcard extends StatelessWidget {
  const projectcard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          project.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Spacer(),
        Text(
          project.description!,
          maxLines: Responsive.isMobileLarge(context) ? 3: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.5,
          ),
        ),
        Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ))
      ]),
    );
  }
}
