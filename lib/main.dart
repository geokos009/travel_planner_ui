import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presentation/screens/home/home_screen.dart';
import 'presentation/screens/destination/destination_screen.dart';
import 'presentation/screens/attractions/attractions_screen.dart';
import 'presentation/screens/preferences/preferences_screen.dart';
import 'presentation/screens/itinerary/itinerary_screen.dart';
import 'core/config/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: TravelPlannerApp(),
    ),
  );
}

class TravelPlannerApp extends StatelessWidget {
  const TravelPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Planner',
      theme: AppTheme.lightTheme,
      routes: {
        '/': (context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/destination':
            final destination = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) => DestinationScreen(destination: destination),
            );
          case '/attractions':
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (context) => AttractionsScreen(
                destination: args['destination'],
                preferences: args['preferences'],
              ),
            );
          case '/preferences':
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (context) => PreferencesScreen(
                destination: args['destination'],
                selectedRegions: args['selectedRegions'],
              ),
            );
          case '/itinerary':
            return MaterialPageRoute(
              builder: (context) => const ItineraryScreen(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            );
        }
      },
    );
  }
}
