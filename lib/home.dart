import 'package:flutter/material.dart';
import 'package:animated_floating_widget/animated_floating_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            leading: IconButton(
              icon: Icon(Icons.logout, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            groupAlignment: 0,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.checkroom_outlined),
                selectedIcon: Icon(Icons.checkroom),
                label: Text('Clothes'),

              ),
              NavigationRailDestination(
                icon: Icon(Icons.book_outlined),
                selectedIcon: Icon(Icons.book),
                label: Text('Books'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.chair_outlined),
                selectedIcon: Icon(Icons.chair),
                label: Text('Furniture'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.propane_outlined),
                selectedIcon: Icon(Icons.propane),
                label: Text('Misc.'),
              ),
            ],
          ),
          Expanded(
            child: Container(
              // Add your widget tree here
              child: GridView.count(
                crossAxisCount: 2,
                children: [ 
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ]
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}