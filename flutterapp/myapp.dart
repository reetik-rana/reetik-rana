import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourist App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Places to Visit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Place> places = [
    Place(
      name: 'Golden Temple',
      description: 'A beautiful Sikh temple located in Amritsar, India.',
      image: 'assets/images/golden_temple.jpg',
    ),
    Place(
      name: 'Taj Mahal',
      description: 'A white marble mausoleum located in Agra, India.',
      image: 'assets/images/taj_mahal.jpg',
    ),
    Place(
      name: 'Great Wall of China',
      description: 'A historical defensive barrier along the borders of China.',
      image: 'assets/images/great_wall_of_china.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return ListTile(
            leading: Image.asset(place.image),
            title: Text(place.name),
            subtitle: Text(place.description),
            onTap: () {
              // Navigate to a detail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailPage(place: place),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Place {
  final String name;
  final String description;
  final String image;

  const Place({required this.name, required this.description, required this.image});
}

class PlaceDetailPage extends StatelessWidget {
  final Place place;

  const PlaceDetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(place.image),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(place.description),
            ),
          ],
        ),
      ),
    );
  }
}
