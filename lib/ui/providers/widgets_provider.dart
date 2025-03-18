import 'package:flutter/material.dart';

class WidgetsProvider extends ChangeNotifier {
  List categories = [
    // Categories
    {
      "id": 100,
      "title": "Widgets",
      "subcategories": [
        // Subcategories
        {
          "id": 20,
          "title": "Layouts",
          "widgets": [
            {
              "id": 10,
              "title": "Container",
              "description": "A convenience widget that combines common painting, positioning, and sizing widgets.",
              "code": "main() => runApp(MaterialApp(home: Container()));",
            },
            {
              "id": 11,
              "title": "Row",
              "description": "A widget that displays its children in a horizontal array.",
              "code": "main() => runApp(MaterialApp(home: Row()));",
            },
            {
              "id": 12,
              "title": "Column",
              "description": "A widget that displays its children in a vertical array.",
              "code": "main() => runApp(MaterialApp(home: Column()));",
            },
            {
              "id": 13,
              "title": "ListView",
              "description": "A scrollable list of widgets arranged linearly.",
              "code": "main() => runApp(MaterialApp(home: ListView()));",
            },
            {
              "id": 14,
              "title": "GridView",
              "description": "A grid list of widgets.",
              "code": "main() => runApp(MaterialApp(home: GridView.count(crossAxisCount: 2, children: List.generate(100, (index) => Text('Item \$index'))));",
            },
            {
              "id": 15,
              "title": "Stack",
              "description": "A widget that positions its children relative to its edges.",
              "code": "main() => runApp(MaterialApp(home: Stack()));",
            },
            {
              "id": 16,
              "title": "Wrap",
              "description": "A widget that displays its children in multiple horizontal or vertical runs.",
              "code": "main() => runApp(MaterialApp(home: Wrap()));",
            },
            {
              "id": 17,
              "title": "Flow",
              "description": "A widget that sizes and positions children efficiently using a flow algorithm.",
              "code": "main() => runApp(MaterialApp(home: Flow()));",
            },
            {
              "id": 18,
              "title": "Table",
              "description": "A widget that uses the table layout algorithm for its children.",
              "code": "main() => runApp(MaterialApp(home: Table()));",
            },
          ]
        }
      ],
    }
  ];

  Map _selectedCategory = {};
  Map get selectedCategory => _selectedCategory;
  set selectedCategory(Map category) {
    _selectedCategory = category;
    notifyListeners();
  }

  Map _selectedSubcategory = {};
  Map get selectedSubcategory => _selectedSubcategory;
  set selectedSubcategory(Map subcategory) {
    _selectedSubcategory = subcategory;
    notifyListeners();
  }

  Map _selectedWidget = {};
  Map get selectedWidget => _selectedWidget;
  set selectedWidget(Map widget) {
    _selectedWidget = widget;
    notifyListeners();
  }
}
