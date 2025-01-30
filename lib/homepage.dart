import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:meenabazzar_project/fotgetscreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{

//   with SingleTickerProviderStateMixin{
//   late AnimationController controller;
//   late Animation<Alignment> tLAlignAnim;
//   late Animation<Alignment> brALignAnim;
//
// @override
//   void initState() {
//    controller=AnimationController(
//        duration: Duration(seconds: 2),
//        vsync: this
//    ) ;
//     super.initState();
//     tLAlignAnim = TweenSequence<Alignment>([
//       TweenSequenceItem<Alignment>(
//           tween: Tween<Alignment>(begin: Alignment.topLeft,end: Alignment.topRight),
//           weight: 1,
//           ),
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topRight,end: Alignment.bottomLeft),
//         weight: 1,
//       ),
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomRight,end: Alignment.bottomLeft),
//         weight: 1,
//       ),
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomLeft,end: Alignment.topLeft),
//         weight: 1,
//       ),
//
//     ]).animate(controller);
//
//     brALignAnim=TweenSequence<Alignment>([
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topLeft,end: Alignment.topRight),
//         weight: 1,
//       ),
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topRight,end: Alignment.bottomLeft),
//         weight: 1,
//       ),
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomRight,end: Alignment.bottomLeft),
//         weight: 1,
//       ),
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomLeft,end: Alignment.topLeft),
//         weight: 1,
//       ),
//
//     ]).animate(controller);
//     controller.repeat();
//
// }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/image/image01.png"),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                      height: size.height * .60,
                      width: size.width * .90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        border:GradientBoxBorder(
                          width: 6,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.blue,
                                  Colors.green,
                                  Colors.yellow,
                                ],

                            ))
                      ),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    const Text("Login",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/image/download.jpeg",
                                      height: 60,),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Text("bringing fresherss to your life",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const LinearProgressIndicator(
                                value: 5,
                                color: Colors.green,
                              ),
                              Text("Sing in to your account",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 20,),

                              TextField(decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(.1)
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black.withOpacity(.1)
                                      )
                                  ),
                                  prefixIcon: Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.black.withOpacity(.5),),
                                  hintText: "Email or Employer Id",
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(.2)
                                  )
                              ),),
                              const SizedBox(height: 15,),
                              TextField(decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(.1)
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black.withOpacity(.1)
                                      )
                                  ),
                                  prefixIcon: Icon(Icons.lock,
                                    color: Colors.black.withOpacity(.5),),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(.2)
                                  )
                              ),),
                              const SizedBox(height: 15,),
                              TextField(decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(.1)
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black.withOpacity(.1)
                                      )
                                  ),
                                  hintText: "Select a unit",
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(.2)
                                  )
                              ),),
                              SizedBox(height: 30,),


                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    const Text("Remember Me",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context, MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetScreen(),));
                                      },
                                      child: Text("Forget Password?",
                                        style: TextStyle(
                                          color: Colors.red.shade400
                                              .withOpacity(
                                              .6),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        ),

                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 25,),

                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Login",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black.withOpacity(.5)
                                    ),


                                  ))
                            ],
                          ),
                        ),
                      )







                  )



            ),


          ],
        ),
      ),


    );

    
  }
}


























