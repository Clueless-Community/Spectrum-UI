import 'package:flutter_component_ui/ui_components/avatars/all_avatars/avatars.dart';
import 'package:flutter_component_ui/ui_components/alerts/alerts.dart';
import 'package:flutter_component_ui/ui_components/buttons/buttons.dart';
import 'package:flutter_component_ui/ui_components/cards/cards.dart';
import 'package:flutter_component_ui/ui_components/input_fields/input_fields.dart';
import 'package:flutter_component_ui/ui_components/messages/messages.dart';
import 'package:flutter_component_ui/ui_components/paginations/paginations.dart';
import 'package:flutter_component_ui/ui_components/pricing_cards/pricing_cards.dart';
import 'package:flutter_component_ui/ui_components/segmented_controls/segmented_control_screen.dart';

import '../ui_components/sliders/sliders.dart';

final List<Map<String, dynamic>> widgetCategoryData = [
  {
    'categoryName': 'Buttons',
    'categoryScreen': const ButtonScreen(),
  },
  {
    'categoryName': 'Alerts',
    'categoryScreen': const AlertScreen(),
  },
  {
    'categoryName': 'Labels',
    'categoryScreen': const AvatarScreen(),
  },
  {
    'categoryName': 'Bottom Navigation Bars',
    'categoryScreen': const AlertScreen(),
  },
  {
    'categoryName': 'Avatars',
    'categoryScreen': const AvatarScreen(),
  },
  {
    'categoryName': 'Cards',
    'categoryScreen': const CardScreen(),
  },
  {
    'categoryName': 'Input Field',
    'categoryScreen': InputFieldScreen(),
  },
  {
    'categoryName': 'Sliders',
    'categoryScreen': const SliderScreen(),
  },
  {
    'categoryName': 'Message',
    'categoryScreen': MessageScreen(),
  },
  {
    'categoryName': 'Pricing Cards',
    'categoryScreen': PricingCardScreen(),
  },
  {
    'categoryName': 'Segmented Controls',
    'categoryScreen': const SegmentedControlScreen(),
  },
  {
    'categoryName': 'Pagination',
    'categoryScreen': const PaginationScreen(),
  }
];
