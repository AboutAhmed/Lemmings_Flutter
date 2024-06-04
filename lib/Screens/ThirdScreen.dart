import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1), // Customize border color and width
                  ),
                  child: Icon(Icons.menu, color: Colors.black),
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xff8364E8), Color(0xffD66062)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds),
                  child: Text(
                    'Lemmings',
                    style: GoogleFonts.wendyOne(
                      textStyle: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // This color will be overridden by the gradient
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/Profile.png'),
                  radius: 20,
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 16, top: 10), // Adjust padding as needed
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Icon(Icons.menu, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Color(0xff8364E8), Color(0xffD66062)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.add, color: Colors.white),
                                  const SizedBox(width: 8),
                                  Text(
                                    'New Chat',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Recent',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          leading: Icon(Icons.messenger_outline),
                          title: Text('Whats bro'),
                          onTap: () {
                            // Handle item 1 tap
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Icon(Icons.messenger_outline),
                          title: Text('Whats your mind?'),
                          onTap: () {
                            // Handle item 1 tap
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Icon(Icons.messenger_outline),
                          title: Text('Who are you?'),
                          onTap: () {
                            // Handle item 1 tap
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Icon(Icons.messenger_outline),
                          title: Text('What are you doing?'),
                          onTap: () {
                            // Handle item 1 tap
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Icon(Icons.messenger_outline),
                          title: Text('How are you?'),
                          onTap: () {
                            // Handle item 1 tap
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Icon(Icons.messenger_outline),
                          title: Text('How is this possible bro??'),
                          onTap: () {
                            // Handle item 1 tap
                          },
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end, // Align items to the bottom
                            children: [
                              ListTile(
                                leading: Icon(Icons.info_outline),
                                title: const Row(
                                  children: [
                                    Text('Help'),
                                    Spacer(),
                                    Text('.',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20)),  // Dots as suffix
                                  ],
                                ),
                                onTap: () {
                                  // Handle help tap
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.access_time),
                                title: Text('Activity'),
                                onTap: () {
                                  // Handle help tap
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.settings),
                                title: const Row(
                                  children: [
                                    Text('Settings'),
                                    Spacer(),
                                    Text('.',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20)), // Dots as suffix
                                  ],
                                ),
                                onTap: () {
                                  // Handle help tap
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff041E49),
                  child: const Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'See the latest updates to the. ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "Lummings app privacy hub",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white, // Set underline color to white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    const Text('I need job.', style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    )),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 13,
                        child: Image.asset('lib/assets/Profile.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      SizedBox(width: 10,),
                      Text('whats up, Umar! not much, just hanging out in the'
                          'digital\n world, ready to be helpful or chat about anything thats on\n your mind', style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('.  www.intelliagesolutions.com', style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      )),
                      Icon(Icons.volume_up_outlined),
                    ],
                  ),
                ),
                Container(
                  height:190,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xfff8f8f8)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Image.asset('lib/assets/logo.png', height: 40,width: 40,),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Intelliage Solution\n',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Misaaki Enterprises",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: const Center(
                                child: Text('BlockChain / CryptoCurrency',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: const Center(
                                child: Text('\$150k - \$350k p.a',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.person_outline, size: 20,),
                            SizedBox(width: 2,),
                            Text('200 - 300 Employes',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black54,
                            ),),
                            SizedBox(width: 5,),
                            Icon(Icons.location_on_outlined, size: 20,),
                            SizedBox(width: 2,),
                            Text('Kasur, Punjab, Pakistan',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.access_time, size: 20,),
                            SizedBox(width: 2,),
                            Text('9am to 6pm',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.shopping_bag_outlined, size: 20,),
                            SizedBox(width: 2,),
                            const Text('5+ Years',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                            SizedBox(width: 140,),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: const Center(
                                child: Text('Visit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  ),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.thumb_up_alt_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.thumb_down_alt_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.share_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.tune_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.more_vert_outlined),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('.  www.google.com', style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      )),
                      Icon(Icons.volume_up_outlined),
                    ],
                  ),
                ),
                Container(
                  height:190,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xfff8f8f8)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Image.asset('lib/assets/logo.png', height: 40,width: 40,),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Intelliage Solution\n',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Misaaki Enterprises",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: const Center(
                                child: Text('BlockChain / CryptoCurrency',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: const Center(
                                child: Text('\$150k - \$350k p.a',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.person_outline, size: 20,),
                            SizedBox(width: 2,),
                            Text('200 - 300 Employes',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                            SizedBox(width: 5,),
                            Icon(Icons.location_on_outlined, size: 20,),
                            SizedBox(width: 2,),
                            Text('Kasur, Punjab, Pakistan',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.access_time, size: 20,),
                            SizedBox(width: 2,),
                            Text('9am to 6pm',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.shopping_bag_outlined, size: 20,),
                            SizedBox(width: 2,),
                            const Text('5+ Years',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                            SizedBox(width: 140,),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: const Center(
                                child: Text('Visit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.thumb_up_alt_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.thumb_down_alt_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.share_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.tune_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.more_vert_outlined),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('.  www.microsoft.com', style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      )),
                      Icon(Icons.volume_up_outlined),
                    ],
                  ),
                ),
                Container(
                  height:190,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xfff8f8f8)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Image.asset('lib/assets/logo.png', height: 40,width: 40,),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Intelliage Solution\n',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Misaaki Enterprises",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: const Center(
                                child: Text('BlockChain / CryptoCurrency',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: const Center(
                                child: Text('\$150k - \$350k p.a',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.person_outline, size: 20,),
                            SizedBox(width: 2,),
                            Text('200 - 300 Employes',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                            SizedBox(width: 5,),
                            Icon(Icons.location_on_outlined, size: 20,),
                            SizedBox(width: 2,),
                            Text('Kasur, Punjab, Pakistan',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.access_time, size: 20,),
                            SizedBox(width: 2,),
                            Text('9am to 6pm',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.shopping_bag_outlined, size: 20,),
                            SizedBox(width: 2,),
                            const Text('5+ Years',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),),
                            SizedBox(width: 140,),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: const Center(
                                child: Text('Visit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.thumb_up_alt_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.thumb_down_alt_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.share_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.tune_outlined),
                      SizedBox(width: 15,),
                      Icon(Icons.more_vert_outlined),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffEAEAEA), // Background color
                      hintText: 'Enter a prompt here',
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Handle add icon tap
                            },
                            icon: Icon(Icons.add_photo_alternate_outlined),
                            padding: EdgeInsets.zero, // Remove padding around the icon
                          ),
                          IconButton(
                            onPressed: () {
                              // Handle listen icon tap
                            },
                            icon: Icon(Icons.keyboard_voice_outlined),
                            padding: EdgeInsets.zero, // Remove padding around the icon
                          ),
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none, // Remove outline border
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
