import 'package:flutter/material.dart';

void main(){
  runApp(  MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = "click me ";  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title:  const Center(
            child:  Text("my App")
        
            ),
            backgroundColor: Colors.blueAccent,
          
          ),
          body:  Center(
            child: Column(
              children: [
                Image.asset('images/view.jpg'),
                // Image.network('https://c4.wallpaperflare.com/wallpaper/715/993/112/mountain-gorilla-silverback-rwanda-wallpaper-preview.jpg') ,
                ElevatedButton(
                 onPressed: (){
                 setState(() {
                   buttonText =" hey am clicked ";  
                 });
                 },
                   child:   Text(buttonText)),
                
                
                
                
              ],
            ) ,
          
          ),
          bottomNavigationBar: BottomNavigationBar(
            // type: BottomNavigationBarType.fixed,
            items: const [
              
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          backgroundColor: Colors.blue,
          currentIndex: 2,
          ),
          
      ),
    );
  }
}
