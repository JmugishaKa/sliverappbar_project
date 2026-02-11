[Oimport 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverAppBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliverAppBarDemo(),
    );
  }
}

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // This is the SliverAppBar - our main widget
          SliverAppBar(
            // Property 1: expandedHeight - controls how tall the app bar is when expanded
            expandedHeight: 250.0,
            
            // Property 2: pinned - keeps the app bar visible at the top when scrolling
            pinned: true,
            
            // Property 3: floating - makes app bar reappear when scrolling up
            floating: false,
            
            // The flexible space contains the title and background
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'SliverAppBar Demo',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(
                  Icons.phone_android,
                  size: 80,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          ),
          
          // SliverList - shows scrollable content below the app bar
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text('${index + 1}'),
                    ),
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('Scroll to see the SliverAppBar collapse!'),
                  ),
                );
              },
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
