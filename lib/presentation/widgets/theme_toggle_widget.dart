import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unfold_ai_app/core/theme/theme_cubit.dart';
import 'package:unfold_ai_app/core/theme/theme_mode_type.dart';

/// A widget that allows the user to toggle the theme mode.
class ThemeToggleWidget extends StatelessWidget {
  /// Constructor for the ThemeToggleWidget.
  const ThemeToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeModeType>(
      builder: (context, themeMode) {
        return PopupMenuButton<ThemeModeType>(
          icon: Icon(themeMode.icon),
          tooltip: 'Theme Mode',
          onSelected: (ThemeModeType selectedTheme) {
            unawaited(context.read<ThemeCubit>().setTheme(selectedTheme));
          },
          itemBuilder: (BuildContext context) =>
              ThemeModeType.values.map((ThemeModeType theme) {
            return PopupMenuItem<ThemeModeType>(
              value: theme,
              child: Row(
                children: [
                  Icon(
                    theme.icon,
                    color: theme == themeMode
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    theme.displayName,
                    style: TextStyle(
                      color: theme == themeMode
                          ? Theme.of(context).primaryColor
                          : null,
                      fontWeight: theme == themeMode
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  if (theme == themeMode) ...[
                    const Spacer(),
                    Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColor,
                      size: 16,
                    ),
                  ],
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
