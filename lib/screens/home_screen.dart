import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/cubit/football_cubit.dart';
import 'package:football_app/widget/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<FootballCubit>(context).apiService.resetAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Football ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: .5,
      ),
      body: BlocBuilder<FootballCubit, FootballState>(
        builder: (context, state) {
          if (state is FootballLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Footballsuccess) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return const HomeWidget();
              },
              itemCount: 15,
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              return const HomeWidget();
            },
            itemCount: 15,
          );
        },
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return const HomeWidget();
      //   },
      //   itemCount: 20,
      // ),
    );
  }
}
