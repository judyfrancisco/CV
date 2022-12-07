import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:cv/Achievements.dart';
import 'package:cv/Projects.dart';
import 'package:cv/Skills.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AboutMe.dart';
import 'main.dart';

// final Uri _url = Uri.parse('https://www.linkedin.com/in/harshit-sahu-1015a0178/?originalSubdomain=in');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [

        const SizedBox(
          height: 50,
          width: double.infinity,
        ),

        const CircleAvatar(

          radius: 95,
          backgroundImage: AssetImage('assets/images/judy.jpg'),

        ),

        const SizedBox(
          height: 18,
          width: double.infinity,
        ),

        const Text(
          'Judy Ann Francisco',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(
          width: double.infinity,
          child: Column(
            children:  [

              const Text(
                'IT STUDENT',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => _launchUrl('https://www.facebook.com/index.php'),
                    child: Image.network(
                      'https://www.bambucoworking.com/wp-content/uploads/2017/04/facebook-logo-png-2335.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => _launchUrl('https://philcstlms.net/moodle/'),
                    child: Image.network(
                      'https://www.bing.com/th?id=OIP.FChVlTEloMq6fk0hRy58kwHaHa&w=170&h=170&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => _launchUrl('https://github.com/'),
                    child: Image.network(
                      'https://www.bing.com/th?id=OIP.ckeUFk-yid0vfWnd56w7wAHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                      width: 60,
                      height: 60,
                ),
              ),

                ],
              ),
              
              // ElevatedButton(
              //   onPressed: _launchUrl, child: const Text(
              //     'Press Me',
              //   ),
              // ),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
          width: double.infinity,
        ),

        Expanded(
          child: SingleChildScrollView(
              
            scrollDirection: Axis.vertical,
              
            child: Column(
              
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const AboutMe()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.man,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'About Me',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                 InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Skills()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.stacked_line_chart_outlined,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Skills',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Achievements()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.grade,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Achievements',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Projects()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.personal_injury_outlined,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Projects',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const HomeRoute()));
                  },
                  icon: const Icon(
                    // <-- Icon
                    Icons.logout,
                  ),
                  label: const Text('Logout'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.redAccent,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                  ),
                ),
              ],
            ),
              
             
              
          ),
        ),
       ],
      ),
  

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=>  Page2())
      //   );
      //   }
      // )
        
    );
  }

  void _launchUrl(String u) async {
    //final Uri _url = Uri.parse(u);
    log('Clicked!');
    if (!await launchUrl(Uri.parse(u))) {
      log('and!');
      throw 'Could not launch $u';
    }else{
      log('Not done!');
    }
    log('end');
  }


}