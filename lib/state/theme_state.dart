import 'package:jaspr/jaspr.dart';

class ThemeState extends InheritedComponent {
  final bool isDarkMode;
  final Function(bool) toggleTheme;

  const ThemeState({
    required this.isDarkMode,
    required this.toggleTheme,
    required super.child,
    super.key,
  });

  static ThemeState of(BuildContext context) {
    return context.dependOnInheritedComponentOfExactType<ThemeState>()!;
  }

  @override
  bool updateShouldNotify(ThemeState oldComponent) {
    return isDarkMode != oldComponent.isDarkMode;
  }
}
