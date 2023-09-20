import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MovieApp - 200070"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search,color: Colors.white,),
            onPressed: () {},
          )
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
              new DrawerHeader(child: new Material()),
              new ListTile(
                  title: new Text("Peliculas"),
                  trailing: new Icon(Icons.local_movies),
              ),
              new Divider(
                  height: 5.0,
              ),
              new ListTile(
                  title: new Text("Televisión"),
                  trailing: new Icon(Icons.live_tv_rounded),
              ),
              new Divider(
                  height: 5.0,
              ),
              new ListTile(
                  title: new Text("Cerrar"),
                  trailing: new Icon(Icons.close),
                  onTap: () => Navigator.of(context).pop(),
              ),
          ],
        ),
      ),

      body: new PageView(

      ),
      bottomNavigationBar: new BottomNavigationBar(items: _obtenerIconos(),
      ),
    );
  }
  List<BottomNavigationBarItem> _obtenerIconos(){
    return [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up_alt_rounded),
        label: "Populares"
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update_rounded),
        label: "Próximamente"
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star_rounded),
        label: "Populares"
      ),
    ];
  }
}
