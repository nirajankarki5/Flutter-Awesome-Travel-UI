import 'activity_model.dart';

class Sights {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Sights({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    startTimes: ["10:00", "18:00"],
    startDay: ["Mon", "Sat"],
    rating: 5,
    price: 15,
  ),
  Activity(
    startTimes: ["07:00", "18:00"],
    startDay: ["Sun", "Sat"],
    rating: 4,
    price: 20,
  ),
  Activity(
    startTimes: ["09:00", "18:00"],
    startDay: ["Sun", "Sat"],
    rating: 3,
    price: 18,
  ),
  Activity(
    startTimes: ["06:00", "20:00"],
    startDay: ["Sun", "Sat"],
    rating: 4,
    price: 30,
  ),
];

List<Sights> sights = [
  Sights(
    imageUrl: 'assets/phewaLake.jpg',
    city: 'Phewa Lake, Pokhara',
    country: 'Nepal',
    description:
        'Phewa Tal is the travellers’ focal point in Pokhara, and is the second largest lake in Nepal. In contrast to the gaudy tourist development of Lakeside, the steep southwestern shore is densely forested and alive with birdlife.',
    activities: activities,
  ),
  Sights(
    imageUrl: 'assets/swayambhunath.jpg',
    city: 'Swayambhunath Temple, Kathmandu',
    country: 'Nepal',
    description:
        'Find peace and prayers on the little hillock of Swaymbhunath in the northwest of Kathmandu Valley. Swayambhu is one of the holiest Buddhist stupas in Nepal. It is said to have evolved spontaneously when the valley was created out of a primordial lake more than 2,000 years ago. This stupa is the oldest of its kind in Nepal and has numerous shrines and monasteries on its premises.',
    activities: activities,
  ),
  Sights(
    imageUrl: 'assets/lumbini.jpg',
    city: 'Birth Place of Buddha, Lumbini',
    country: 'Nepal',
    description:
        'Visit Lumbini, the birthplace of the Buddha and see the beautiful Buddhist monasteries built by the international community; study Buddhism or meditate in the peaceful atmosphere.',
    activities: activities,
  ),
  Sights(
    imageUrl: 'assets/mustang.jpg',
    city: 'Treck in Mustang',
    country: 'Nepal',
    description:
        'To trek in Upper Mustang is a rare privilege. Here you will experience a way of life of true mountain people, who for hundreds of years, had very little contact with the rest of Nepal and retained their rich cultural heritage.',
    activities: activities,
  ),
];
