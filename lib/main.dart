import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kerlos_sherif/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kerlos_sherif/core/configs/connection/bloc/connected_bloc.dart';
import 'package:kerlos_sherif/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            title: 'Kerlos Sherif',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
            )),
      ),
    );
  }
}
