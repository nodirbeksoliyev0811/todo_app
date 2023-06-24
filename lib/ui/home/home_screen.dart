// import 'package:default_project/utils/colors.dart';
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Home Screen",
//           style: TextStyle(color: AppColors.white),
//         ),
//       ),
//       body: const Column(
//         children: [
//           Text(""),
//         ],
//       ),
//     );
//   }
// }

import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/images.dart';
import 'package:default_project/utils/svges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String text;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheet(),
      ),
    );
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  List<String> titles = ["Airpods"];
  List<String> descriptions = ['Ywdyqwuidwqfwqgfie'];
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  void addTitles(String title){
    setState(() {
      print(titles);
      titles.add(title);
    });
  }

  void addDescriptions(String description){
    setState(() {
      descriptions.add(description);
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text("Hi"),
        Expanded(child: ListView(
          children: List.generate(titles.length, (index) => ListTile(
            title: Text("${titles[index]}", style: TextStyle(
              color: AppColors.black
            ),),
            subtitle: Text("${descriptions[index]}"),
          )),
        )),
        Center(
          child: ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.C_363636,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
                    height: height*0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 25.w, top: 25.h),
                          child: Text("Add Task", style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white.withOpacity(0.87)
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Title",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: AppColors.C_AFAFAF
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                  color: AppColors.C_979797
                                )
                              )
                            ),
                            controller: _controller1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Description",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: AppColors.C_AFAFAF
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        color: AppColors.C_979797
                                    )
                                )
                            ),
                            onSubmitted: (v){
                              print(v);
                            },
                            controller: _controller2,
                          ),
                        ),
                        SizedBox(height: 28.h,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Row(
                          children: [
                            IconButton(onPressed: () {  },
                            icon: SizedBox(height: 24.w, width: 24.w, child: SvgPicture.asset(AppIcons.timer),)),
                            SizedBox(width: 26.w,),
                            IconButton(onPressed: () {  },
                            icon: SizedBox(height: 24.w, width: 24.w, child: SvgPicture.asset(AppIcons.tag),)),
                            SizedBox(width: 26.w,),
                            IconButton(onPressed: () {  },
                            icon: SizedBox(height: 24.w, width: 24.w, child: SvgPicture.asset(AppIcons.flag),)),
                            Spacer(),
                            IconButton(onPressed: () {
                              print(_controller2.text);
                              addTitles(_controller2.text);
                              addDescriptions(_controller2.text);
                              Navigator.pop(context);
                            },
                            icon: SizedBox(height: 24.w, width: 24.w, child: SvgPicture.asset(AppIcons.send),)),
                          ],
                        ),
                        )
                      ]
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

