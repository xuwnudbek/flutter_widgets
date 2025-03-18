import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui/providers/main_provider.dart';
import 'package:flutter_widgets/ui/providers/widgets_provider.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:provider/provider.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return ChangeNotifierProvider<WidgetsProvider>(
      create: (context) => WidgetsProvider(),
      builder: (context, snapshot) {
        return Consumer<WidgetsProvider>(
          builder: (context, provider, _) {
            return Scaffold(
              body: Row(
                children: [
                  // Sidebar
                  Container(
                    width: 300,
                    color: themeData.cardColor,
                    child: Column(
                      spacing: 4,
                      children: [
                        Container(
                          height: 86,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColors.black.withValues(alpha: 0.1),
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "ALGO Team",
                              style: textTheme.titleLarge?.copyWith(
                                color: themeData.primaryColor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ScrollConfiguration(
                            behavior: CupertinoScrollBehavior(),
                            child: ListView.builder(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              shrinkWrap: true,
                              itemCount: provider.categories.length,
                              itemBuilder: (context, index) {
                                Map category = provider.categories[index];

                                return ExpansionTile(
                                  title: Text("${category["title"]}"),
                                  childrenPadding: EdgeInsets.only(left: 6, top: 6, right: 6),
                                  children: [
                                    ...((category["subcategories"] ?? []) as List).map((subcategory) {
                                      return Padding(
                                        padding: const EdgeInsets.only(bottom: 6.0),
                                        child: ExpansionTile(
                                          title: Text("${subcategory["title"]}"),
                                          childrenPadding: EdgeInsets.all(6),
                                          children: [
                                            ...((subcategory["widgets"] ?? []) as List).map((widget) {
                                              bool isSelected = provider.selectedWidget['id'] == widget['id'];
                                              return ListTile(
                                                selected: isSelected,
                                                onTap: () {
                                                  provider.selectedCategory = category;
                                                  provider.selectedSubcategory = subcategory;
                                                  provider.selectedWidget = widget;
                                                },
                                                title: Text(
                                                  "${widget["title"]}",
                                                  style: textTheme.bodyMedium,
                                                ),
                                                trailing: isSelected
                                                    ? Icon(
                                                        Icons.check,
                                                        color: themeData.primaryColor,
                                                      )
                                                    : null,
                                              );
                                            }),
                                          ],
                                        ),
                                      );
                                    }),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 6.0),
                                      child: ExpansionTile(
                                        title: Text("Layouts"),
                                        childrenPadding: EdgeInsets.all(6),
                                        children: [
                                          ListTile(
                                            onTap: () {},
                                            title: Text(
                                              "Row",
                                              style: textTheme.bodyMedium,
                                            ),
                                          ),
                                          ListTile(
                                            onTap: () {},
                                            title: Text(
                                              "Column",
                                              style: textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Body
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: themeData.cardColor,
                      ),
                      child: Column(
                        children: [
                          if (provider.selectedWidget.isNotEmpty)
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: "${provider.selectedCategory["title"]}",
                                    style: textTheme.titleSmall?.copyWith(
                                      color: textTheme.titleSmall?.color?.withValues(alpha: 0.5),
                                    ),
                                    children: [
                                      WidgetSpan(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 12,
                                            color: textTheme.titleSmall?.color?.withValues(alpha: 0.5),
                                          ),
                                        ),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                      TextSpan(
                                        text: "${provider.selectedSubcategory["title"]}",
                                        style: textTheme.titleSmall?.copyWith(
                                          color: textTheme.titleSmall?.color?.withValues(alpha: 0.5),
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 12,
                                            color: textTheme.titleSmall?.color?.withValues(alpha: 0.5),
                                          ),
                                        ),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                      TextSpan(
                                        text: "${provider.selectedWidget["title"]}",
                                        style: textTheme.titleSmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    themeData.brightness == Brightness.dark ? Icons.light_mode : Icons.dark_mode,
                                    color: AppColors.textDark,
                                  ),
                                  onPressed: () {
                                    if (themeData.brightness == Brightness.dark) {
                                      context.read<MainProvider>().themeMode = ThemeMode.light;
                                    } else {
                                      context.read<MainProvider>().themeMode = ThemeMode.dark;
                                    }
                                  },
                                ),
                              ],
                            ),
                          Divider(
                            color: themeData.scaffoldBackgroundColor.withValues(alpha: 0.5),
                          ),
                          if (provider.selectedWidget.isNotEmpty)
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${provider.selectedWidget['title']}",
                                          style: textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
