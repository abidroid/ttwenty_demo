import 'package:flutter/material.dart';
import 'package:ttwenty_demo/screens/schedule_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('T20 World Cup'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(
                          size: 60,
                        ),
                        Text(
                          'T20 World Cup',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text('Schedule'),
                onTap: (){
                  Navigator.of(context).pop();
                  _goToScheduleScreen(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text('Venues'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('History'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Teams'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Rate App'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),


            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: [
              InkWell(
                onTap: () {
                  _goToScheduleScreen(context);
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'Schedule',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  print('venues');
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'Venues',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  print('History');
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.history,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Teams');
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.group,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'Teams',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Live Score');
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.stacked_bar_chart,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'Live Score',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Highlights');
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.play_circle_fill,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'Highlights',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ));
  }

  _goToScheduleScreen( BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return ScheduleScreen();
    }));
  }
}
