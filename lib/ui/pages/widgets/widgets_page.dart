import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui/widgets/header.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: Header(),
      ),
      body: Row(
        // Sidebar
        children: [
          Container(
            width: 300,
            height: double.infinity,
            color: themeData.scaffoldBackgroundColor,
            padding: EdgeInsets.all(8),
            child: Column(
              spacing: 4,
              children: [
                ExpansionTile(
                  title: Text("Widgets"),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    ListTile(
                      onTap: () {},
                      title: Text("Text"),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Button"),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text("Layouts"),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    ListTile(
                      onTap: () {},
                      title: Text("Row"),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Column"),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text("Themes"),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    ListTile(
                      onTap: () {},
                      title: Text("Light"),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Dark"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Body
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: Center(
                child: Text("Widgets"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
