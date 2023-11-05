import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_json/core/extension/style_extension.dart';
import 'package:simple_app_json/models/user_model.dart';
import 'package:simple_app_json/presentation/ui/home/provider/home_provider.dart';

@RoutePage()
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.user});
  final UserModel user;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  // final dobController = TextEditingController();

  DateTime dob = DateTime.now();

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        firstNameController.text = widget.user.firstName;
        lastNameController.text = widget.user.lastName;
        emailController.text = widget.user.email;
        // dobController.text = DateFormat('dd MMM yyyy')
        //     .format(DateFormat('dd/m/yyyy').parse(widget.user.dob));
        //     dob = DateFormat('dd/m/yyyy').parse(widget.user.dob);
      });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Provider.of<HomeProvider>(context, listen: false).updateUser(
                user: UserModel(
                  id: widget.user.id,
                  // dob: DateFormat('dd/m/yyyy').format(dob),
                  dob: widget.user.dob,
                  email: emailController.text.toString(),
                  firstName: firstNameController.text.toString(),
                  lastName: lastNameController.text.toString(),
                ),
              );
              context.router.pop();
            },
            child: Text(
              "Save",
              style: context.bodyMedium?.copyWith(
                color: context.primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30.h,
              backgroundColor: context.primaryColor,
            ),
            SizedBox(height: 20.h),
            Text(
              "Main Information",
              style: context.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "First Name",
                    style:
                        context.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.h),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: firstNameController,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Last Name",
                    style:
                        context.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: lastNameController,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Email",
                    style:
                        context.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.h),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Text(
            //         "DOB",
            //         style:
            //             context.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     SizedBox(width: 10.h),
            //     Expanded(
            //       flex: 2,
            //       child: TextFormField(
            //         controller: dobController,
            //         textInputAction: TextInputAction.next,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
