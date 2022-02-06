import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ExpansionTile(
          title: Text('General settings'),
          children: [Text('Lorem ipsum')],
        ),
        ExpansionTile(
          title: Text('User settings'),
          children: [
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla dignissim tellus vitae viverra. Nulla facilisi. Fusce mattis odio lacus, ut imperdiet massa ultrices quis. Nulla at gravida nibh. Fusce suscipit leo ligula, et congue turpis vehicula vel. Donec et est nulla. Etiam mollis purus vel varius fringilla. Suspendisse a erat arcu.')
          ],
        ),
        ExpansionTile(
          title: Text('Data policy'),
          children: [
            Text(
                'Vivamus gravida vehicula diam eget pretium. In auctor orci eget velit euismod, vitae mollis nunc vehicula. In hac habitasse platea dictumst. Sed eleifend dui vitae odio congue hendrerit. Donec id blandit ligula. In volutpat ultrices bibendum. Vivamus nibh dolor, consectetur placerat tellus ultrices, vehicula suscipit felis. Aliquam lacus purus, maximus at vulputate vitae, posuere eu velit. Ut non interdum libero, vel pulvinar nulla.')
          ],
        ),
      ],
    );
  }
}
