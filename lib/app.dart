import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unfold_ai_app/core/theme/theme_cubit.dart';
import 'package:unfold_ai_app/core/theme/theme_mode_type.dart';
import 'package:unfold_ai_app/data/datasources/biometric_data_source.dart';
import 'package:unfold_ai_app/data/repositories/biometric_repository_impl.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';
import 'package:unfold_ai_app/domain/usecases/get_biometric_data.dart';
import 'package:unfold_ai_app/presentation/bloc/dashboard_bloc.dart';
import 'package:unfold_ai_app/presentation/pages/dashboard_page.dart';

/// The main application widget.
class App extends StatelessWidget {
  /// Constructor for the App.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeModeType>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Biometrics Dashboard',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                brightness: Brightness.dark,
              ),
              useMaterial3: true,
            ),
            themeMode: themeMode.flutterThemeMode,
            debugShowCheckedModeBanner: false,
            builder: (context, child) => MultiBlocProvider(
              providers: [
                BlocProvider<DashboardBloc>(
                  lazy: false,
                  create: (context) => DashboardBloc(
                    getBiometricData: GetBiometricData(
                      repository: BiometricRepositoryImpl(
                        dataSource: BiometricDataSourceImpl(),
                      ),
                    ),
                    getJournalEntries: GetJournalEntries(
                      repository: JournalRepositoryImpl(
                        dataSource: JournalDataSourceImpl(),
                      ),
                    ),
                  )..add(DashboardEvent.loadData(range: ChartRange.sevenDays)),
                ),
              ],
              child: child ?? const SizedBox.shrink(),
            ),
            home: const DashboardPage(),
          );
        },
      ),
    );
  }
}
