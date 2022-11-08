import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_example/components/app_Loading.dart';
import 'package:mvvm_example/users/models/user_list.model.dart';
import 'package:provider/provider.dart';

import '../view_models/users_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Users'),
        centerTitle: true,
      ),
      body: Padding(
        padding:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_ui(usersViewModel)],
        ),
      ),
    );
  }

  _ui(UsersViewModel usersViewModel) {
    if (usersViewModel.isLoading) {
      return  Container();
    }
    if (usersViewModel.userError != null) {
      return Container();
    }
    return Expanded(
        child: ListView.separated(
            itemBuilder: ((context, index) {
              //  UsersListModel userModel = context.watch<UsersViewModel>().usersListModel[index];
              UsersListModel userModel = usersViewModel.usersListModel[index];
              return Column(
                children: [Text(userModel.name!, style: TextStyle(color: Colors.red),), Text(userModel.email!)],
              );
            }),
            separatorBuilder: (context, index) => Divider(
                  height: 2.sp,
                  thickness: 2.sp,
                  color: Colors.brown,
                ),
            itemCount: usersViewModel.usersListModel.length));
  }
}
