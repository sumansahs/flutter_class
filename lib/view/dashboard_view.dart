import 'package:classwork_flutter/app/routes/app_route.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.arithmeticRoute);
                  },
                  child: const Text('Arithmetic'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                    
                  
                    Navigator.pushNamed(context, AppRoute.randomRoute);
                  },
                  child: Text('RandomNumber'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
