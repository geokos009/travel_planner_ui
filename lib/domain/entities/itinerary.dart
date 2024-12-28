// lib/domain/entities/itinerary.dart
class Itinerary {
  final String destination;
  final List<DayPlan> days;
  final DateTime startDate;
  final DateTime endDate;

  const Itinerary({
    required this.destination,
    required this.days,
    required this.startDate,
    required this.endDate,
  });
}

class DayPlan {
  final int dayNumber;
  final List<PlannedActivity> activities;
  final String accommodation;

  const DayPlan({
    required this.dayNumber,
    required this.activities,
    required this.accommodation,
  });
}

class PlannedActivity {
  final String name;
  final String location;
  final DateTime startTime;
  final Duration duration;

  const PlannedActivity({
    required this.name,
    required this.location,
    required this.startTime,
    required this.duration,
  });
}