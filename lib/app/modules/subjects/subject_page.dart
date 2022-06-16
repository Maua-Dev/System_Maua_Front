import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:system_maua_front/app/modules/subjects/subject_controller.dart';
import 'package:system_maua_front/app/modules/subjects/widgets/subject_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/subject_enum.dart';

import '../../injection_container.dart';

class SubjectPage extends StatefulWidget {
  SubjectPage({Key? key}) : super(key: key);

  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  @override
  Widget build(BuildContext context) {
    var controller = serviceLocator<SubjectController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Matérias',
          icon: Icons.library_books,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Observer(builder: (_) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.subject.length,
                    itemBuilder: (context, index) {
                      return SubjectCardWidget(
                        name: controller.subject[index].name.name,
                        progress: controller.subject[index].progress,
                      );
                    },
                  ),
                );
              }),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
