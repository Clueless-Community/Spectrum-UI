import 'package:flutter_component_ui/ui_components/avatars/all_avatars/avatars.dart';
import 'package:flutter_component_ui/ui_components/alerts/alerts.dart';
import 'package:flutter_component_ui/ui_components/buttons/buttons.dart';
import 'package:flutter_component_ui/ui_components/cards/cards.dart';
import 'package:flutter_component_ui/ui_components/input_fields/input_fields.dart';
import 'package:flutter_component_ui/ui_components/messages/messages.dart';
import 'package:flutter_component_ui/ui_components/paginations/paginations.dart';
import 'package:flutter_component_ui/ui_components/pricing_cards/pricing_cards.dart';
import 'package:flutter_component_ui/ui_components/segmented_controls/segmented_control_screen.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers.dart';
import '../ui_components/bottom_navbars/bottom_navbars.dart';
import '../ui_components/labels/lables.dart';
import '../ui_components/radios/radios.dart';
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
    'categoryScreen': const LabelScreen(),
  },
  {
    'categoryName': 'Bottom Navigation Bars',
    'categoryScreen': const BottomNavBarScreen(),
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
    'categoryScreen': const InputFieldScreen(),
  },
  {
    'categoryName': 'Sliders',
    'categoryScreen': const SliderScreen(),
  },
  {
    'categoryName': 'Message',
    'categoryScreen': const MessageScreen(),
  },
  {
    'categoryName': 'Pricing Cards',
    'categoryScreen': const PricingCardScreen(),
  },
  {
    'categoryName': 'Segmented Controls',
    'categoryScreen': const SegmentedControlScreen(),
  },
  {
    'categoryName': 'Pagination',
    'categoryScreen': const PaginationScreen(),
  },
  {
    'categoryName': 'Radio',
    'categoryScreen': const RadioScreen(),
  },
  {
    'categoryName': 'Stepper',
    'categoryScreen': StepperScreen(),
  },
  // {
  //   'categoryName': 'Progress Bars',
  //   'categoryScreen': const ProgressBar(),
  // },
];
