// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_json/core/extension/style_extension.dart';
import 'package:simple_app_json/presentation/ui/home/provider/home_provider.dart';
import 'package:simple_app_json/routes/app_router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    await Provider.of<HomeProvider>(context, listen: false).loadUserFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    color: context.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.add,
                    color: context.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, value, child) {
          return RefreshIndicator(
            onRefresh: () async {
              value.loadUserFromJson();
            },
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: value.state.users.length,
              itemBuilder: (context, index) {
                var user = value.state.users[index];
                return GestureDetector(
                  onTap: (){
                    context.router.push(DetailRoute(user: user));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: context.primaryColor,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "${user.firstName} ${user.lastName}",
                          style: context.bodyMedium
                              ?.copyWith(color: context.onSurfaceColor),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
