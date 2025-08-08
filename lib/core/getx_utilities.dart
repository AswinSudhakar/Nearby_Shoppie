/*


Navigation=====>>>>

                  Get.to(  MainScreen(),
                    transition: Transition.leftToRightWithFade,
                    duration: Duration(seconds: 1),
                  );


                  Get.back();

                  Get.off(page());

                  Get.offAll(page());


namedRoutes==>>
                  initialroute: '/';
                  Getpages:[
                  Getpage(name:'/',page:()=>page()),
                  Getpage(name:'/second',page:()=>page()),

                  ]

                  Get.toNamed('/second');
                  Get.offNamed(page());
                  Get.offAllNamed(page());


SnackBar and Dialogues=======>>>>

                  Get.snackbar(
                    '',
                    '',
                    titleText: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [CustomText(text: 'Message')],
                    ),
                    messageText: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [CustomText(text: 'Login Successful')],
                    ),
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 50,
                      right: 50,
                    ),
                    snackStyle: SnackStyle.FLOATING,
                    backgroundColor: Colors.greenAccent,
                    padding: EdgeInsets.all(8),
                  );



                   Get.bottomSheet(
                    elevation: 10,
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 128, 235, 132),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: 'Registration Successful!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  Future.delayed(Duration(seconds: 2), () {
                    if (Get.isBottomSheetOpen ?? false) {
                      Get.back();
                    }
                  });



                  Get.defaultDialog(title: 'Alert Message',middleText: 'Successfully Registered');






                  */
