import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:organico_with_bloc_cubit/cubit/products/product_state.dart';
import 'package:organico_with_bloc_cubit/provider/auth/register_provider.dart';
import 'package:organico_with_bloc_cubit/ui/pages/splashPage.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => RegistrProvider())],
    child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => ProductCubit())],
        child: const Myapp()),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
