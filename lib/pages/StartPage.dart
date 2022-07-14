import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';
import '../pages/_all.dart';

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {

    var controller = context.read<Controller>();
    
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Drawer Demo'),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                      child: const Center(
                          child: Text('~ Nav Header ~',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontStyle: FontStyle.italic))),
                      color: Colors.transparent),
                ),
                //Divider(), //here is a divider
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("subtitle",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontStyle: FontStyle.italic)),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Account'),
                  onTap: () {},
                ),
                Divider(), //here is a divider
                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('Calendar'),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help_sharp),
                  title: Text('Help'),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('EndPage'),
                   onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => EndPage()));
                  },
                ),
                Divider(),
              ],
            ),
          ),
          body: const Center(  
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Text( 
                'This demo shows how to use a "drawer" (sliding navigation menu) with page routing...'
              ),
            )
          )
        ),
      );
  }
}