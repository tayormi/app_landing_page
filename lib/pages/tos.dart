import 'package:jaspr/jaspr.dart';
import '../state/theme_state.dart';
import '../config/app_config.dart';

class TermsOfServicePage extends StatelessComponent {
  const TermsOfServicePage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var themeState = ThemeState.of(context);

    yield div(
      classes: 'max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12',
      [
        h1(
          classes:
              'text-3xl font-bold ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
          [text(AppConfig.tosTitle)],
        ),
        p(
          classes:
              'mt-2 text-sm ${themeState.isDarkMode ? 'text-gray-400' : 'text-gray-600'}',
          [text(AppConfig.tosLastUpdated)],
        ),
        div(
          classes: 'mt-8 space-y-8',
          [
            for (var section in AppConfig.tosSections)
              div([
                h2(
                  classes:
                      'text-xl font-semibold ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                  [text(section.title)],
                ),
                p(
                  classes:
                      'mt-2 ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-600'}',
                  [text(section.content)],
                ),
              ]),
          ],
        ),
      ],
    );
  }
}
