import '../ui_components/alerts/All Alerts/alert1.dart';
import '../ui_components/alerts/All Alerts/alert2.dart';
import '../ui_components/alerts/alert.dart';

final List<Map<String, dynamic>> widgetCategoryData = [
  {
    'categoryName': 'Alerts',
    'categoryScreen': AlertScreen(),
  },
  {
    'categoryName': 'Buttons',
    'widgetList': const [
      Alert1(),
      Alert2(),
    ],
    'categoryScreen': AlertScreen(),
  },
  {
    'categoryName': 'Bottom Bar',
    'widgetList': const [
      Alert1(),
      Alert2(),
    ],
    'categoryScreen': AlertScreen(),
  },
  {
    'categoryName': 'Top Bar',
    'widgetList': const [
      Alert1(),
      Alert2(),
    ],
    'categoryScreen': AlertScreen(),
  },
];
