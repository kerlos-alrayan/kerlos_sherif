import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kerlos_sherif/core/configs/connection/bloc/connected_bloc.dart';
import 'package:kerlos_sherif/features/main/main_section.dart';

class NetworkChecking extends StatelessWidget {
  const NetworkChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
      listener: (context, state) {
        // if (state is ConnectedSuccessState) {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //       const SnackBar(content: Text('Internet Connected')));
        // } else if (state is ConnectedFailureState) {
        //   ScaffoldMessenger.of(context)
        //       .showSnackBar(const SnackBar(content: Text('Internet Lost')));
        // }
      },
      builder: (context, state) {
        if (state is ConnectedSucessState) {
          return const MainSection();
          // return const MainScreen();
        }
        // else if (state is ConnectedFailureState) {
        //   return const NoConnectionError();
        // }
        else {
          // return Container();
          // TODO
          // return const NoConnectionError();
          return const MainSection();
        }
      },
    );
  }
}

class NoConnectionError extends StatelessWidget {
  const NoConnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LoadingAnimationWidget.staggeredDotsWave(
            //     color: primaryColor, size: 50.0),
            // SizedBox(height: 3.h),
            Text("Connection failed!"),
          ],
        ),
      ),
    );
  }
}
// TODO
