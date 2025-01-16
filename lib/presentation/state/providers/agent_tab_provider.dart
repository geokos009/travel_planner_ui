import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AgentTab {
  research,
  itinerary,
  cultural,
  food,
  accommodation,
  transportation,
  safety,
  budget,
  activity,
  seasonal,
  currency,
  shopping,
  health,
  accessibility,
  visa,
  technology
}

final activeAgentTabProvider = StateProvider<AgentTab>((ref) => AgentTab.research);