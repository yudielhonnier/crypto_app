import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class ListViewNews extends StatelessWidget {
  const ListViewNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        contentPadding: const EdgeInsets.only(left: 0),
        title: const Text(
          'Digital Assets to Transform Financial Infrastructure',
          style: TextStyle(height: 1.4),
        ),
        subtitle: const Text('5h agao', style: TextStyle(height: 2.0)),
        trailing: Container(
            decoration: BoxDecoration(
              color: darkTheme.colorScheme.primary,
              border: Border.all(
                color: darkTheme.colorScheme.secondary,
              ),
            ),
            padding: const EdgeInsets.all(0),
            width: 90,
            height: 60,
            child: const Icon(Icons.grain_sharp, size: 40)),
      ),
      separatorBuilder: (context, index) => Divider(
        color: darkTheme.colorScheme.secondary,
        height: 18,
      ),
      itemCount: 5,
    );
  }
}
