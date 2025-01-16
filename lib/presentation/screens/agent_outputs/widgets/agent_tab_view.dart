import 'package:flutter/material.dart';
import '../../../state/providers/agent_tab_provider.dart';
import '../../../state/providers/travel_provider.dart';
import 'safety_view.dart';
import 'budget_view.dart';
import 'cultural_view.dart';
import 'food_view.dart';
import 'accommodation_view.dart';
import 'transportation_view.dart';
import 'activity_view.dart';
import 'seasonal_view.dart';
import 'currency_view.dart';
import 'shopping_view.dart';
import 'health_view.dart';
import 'accessibility_view.dart';
import 'visa_view.dart';
import 'technology_view.dart';

class AgentTabView extends StatelessWidget {
  final AgentTab activeTab;
  final Map<String, dynamic> agentData;

  const AgentTabView({
    super.key,
    required this.activeTab,
    required this.agentData,
  });

  @override
  Widget build(BuildContext context) {
    return switch (activeTab) {
      AgentTab.research => Container(),
      AgentTab.itinerary => Container(),
      AgentTab.safety => SafetyView(data: agentData['safetyInfo']),
      AgentTab.budget => BudgetView(data: agentData['budgetInfo']),
      AgentTab.cultural => CulturalView(data: agentData['culturalInfo']),
      AgentTab.food => FoodView(data: agentData['foodInfo']),
      AgentTab.accommodation => AccommodationView(
          data: agentData['accommodationInfo'],
        ),
      AgentTab.transportation => TransportationView(
          data: agentData['transportationInfo'],
        ),
      AgentTab.activity => ActivityView(data: agentData['activityInfo']),
      AgentTab.seasonal => SeasonalView(
          data: agentData['seasonalInfo'],
        ),
      AgentTab.currency => CurrencyView(
          data: agentData['currencyInfo'],
        ),
      AgentTab.shopping => ShoppingView(data: agentData['shoppingInfo']),
      AgentTab.health => HealthView(data: agentData['healthInfo']),
      AgentTab.accessibility => AccessibilityView(
          data: agentData['accessibilityInfo'],
        ),
      AgentTab.visa => VisaView(data: agentData['visaInfo']),
      AgentTab.technology => TechnologyView(
          data: agentData['technologyInfo'],
        ),
    };
  }
}