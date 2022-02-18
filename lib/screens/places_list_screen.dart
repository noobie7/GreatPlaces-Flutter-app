import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import './add_place_screen.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';
import 'dart:io';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<GreatPlaces>(
          child: const Center(
            child: CircularProgressIndicator(),
          ),
          builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
              ? ch as Widget
              : ListView.builder(
                  itemBuilder: (ctx, i) => ListTile(
                        leading: CircleAvatar(
                          backgroundImage: FileImage(
                            File(greatPlaces.items[i].image.path),
                          ),
                        ),
                        title: Text(greatPlaces.items[i].title),
                        onTap: () {},
                      ),
                  itemCount: greatPlaces.items.length),
        ),
      ),
    );
  }
}
