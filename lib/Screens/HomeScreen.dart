import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/Container1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Color(0xff8364E8), Color(0xffD66062)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(bounds),
                                child: Container(
                                  height: 75, // Height of the overlay container (bottom half of 120)
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7), // Adjust color and opacity as needed
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 75,
                                width: 150,
                                alignment: Alignment.topCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       const Text(
                                        'Find Job As a JavaScript',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        'lorem ipsum dolor sit amet consectetur. Orci purus urna eget id quis sed aliquam morb',
                                        style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: Colors.white
                                        ),
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => const LinearGradient(
                                            colors: [Color(0xff284AF8), Color(0xff8264E8)],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ).createShader(bounds),
                                          child: const Center(
                                            child: Text(
                                              'Find',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white, // This color will be overridden by the gradient
                                                ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/Container2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Color(0xff8364E8), Color(0xffD66062)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(bounds),
                                child: Container(
                                  height: 75, // Height of the overlay container (bottom half of 120)
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7), // Adjust color and opacity as needed
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 75,
                                width: 150,
                                alignment: Alignment.topCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Find Job As a JavaScript',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        'lorem ipsum dolor sit amet consectetur. Orci purus urna eget id quis sed aliquam morb',
                                        style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            color: Colors.white
                                        ),
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => const LinearGradient(
                                            colors: [Color(0xff284AF8), Color(0xff8264E8)],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ).createShader(bounds),
                                          child: const Center(
                                            child: Text(
                                              'Find',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white, // This color will be overridden by the gradient
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/Container1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Color(0xff8364E8), Color(0xffD66062)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(bounds),
                                child: Container(
                                  height: 75, // Height of the overlay container (bottom half of 120)
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7), // Adjust color and opacity as needed
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 75,
                                width: 150,
                                alignment: Alignment.topCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Find Job As a JavaScript',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        'lorem ipsum dolor sit amet consectetur. Orci purus urna eget id quis sed aliquam morb',
                                        style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            color: Colors.white
                                        ),
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => const LinearGradient(
                                            colors: [Color(0xff284AF8), Color(0xff8264E8)],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ).createShader(bounds),
                                          child: const Center(
                                            child: Text(
                                              'Find',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white, // This color will be overridden by the gradient
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/Container2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Color(0xff8364E8), Color(0xffD66062)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(bounds),
                                child: Container(
                                  height: 75, // Height of the overlay container (bottom half of 120)
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7), // Adjust color and opacity as needed
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 75,
                                width: 150,
                                alignment: Alignment.topCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Find Job As a JavaScript',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        'lorem ipsum dolor sit amet consectetur. Orci purus urna eget id quis sed aliquam morb',
                                        style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            color: Colors.white
                                        ),
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => const LinearGradient(
                                            colors: [Color(0xff284AF8), Color(0xff8264E8)],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ).createShader(bounds),
                                          child: const Center(
                                            child: Text(
                                              'Find',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white, // This color will be overridden by the gradient
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/Container1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Color(0xff8364E8), Color(0xffD66062)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(bounds),
                                child: Container(
                                  height: 75, // Height of the overlay container (bottom half of 120)
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7), // Adjust color and opacity as needed
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 75,
                                width: 150,
                                alignment: Alignment.topCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Find Job As a JavaScript',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        'lorem ipsum dolor sit amet consectetur. Orci purus urna eget id quis sed aliquam morb',
                                        style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            color: Colors.white
                                        ),
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => const LinearGradient(
                                            colors: [Color(0xff284AF8), Color(0xff8264E8)],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ).createShader(bounds),
                                          child: const Center(
                                            child: Text(
                                              'Find',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white, // This color will be overridden by the gradient
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/Container2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Color(0xff8364E8), Color(0xffD66062)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(bounds),
                                child: Container(
                                  height: 75, // Height of the overlay container (bottom half of 120)
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7), // Adjust color and opacity as needed
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 75,
                                width: 150,
                                alignment: Alignment.topCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Find Job As a JavaScript',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        'lorem ipsum dolor sit amet consectetur. Orci purus urna eget id quis sed aliquam morb',
                                        style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            color: Colors.white
                                        ),
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => const LinearGradient(
                                            colors: [Color(0xff284AF8), Color(0xff8264E8)],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ).createShader(bounds),
                                          child: const Center(
                                            child: Text(
                                              'Find',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white, // This color will be overridden by the gradient
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
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
