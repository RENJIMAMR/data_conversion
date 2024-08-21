import 'package:data_conversion/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<HomeScreenController>(context, listen: false).convertToModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeScreenController>(context);
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              homeProvider.detailsObj.length,
              // homeProvider.details.length,
              (index) => Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 300,
                  color: Colors.blueAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        homeProvider.detailsObj[index].name ?? 'null',
                      ),
                      Text(
                        homeProvider.detailsObj[index].place ?? 'null',
                      ),
                      Text(
                        homeProvider.detailsObj[index].phone ?? 'null',
                      ),
                      Text(
                        homeProvider.detailsObj[index].father ?? 'null',
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
