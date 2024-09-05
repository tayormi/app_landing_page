import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../state/theme_state.dart';
import '../config/app_config.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var themeState = ThemeState.of(context);

    yield footer(
      classes: themeState.isDarkMode
          ? 'bg-gray-800 text-gray-300'
          : 'bg-gray-200 text-gray-700',
      [
        div(
          classes: 'max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8',
          [
            div(
              classes: 'flex flex-col md:flex-row justify-between items-center',
              [
                // Logo and company name
                div(
                  classes: 'flex items-center mb-4 md:mb-0',
                  [
                    img(
                      src: AppConfig.appLogo,
                      alt: 'Company logo',
                      classes: 'h-8 w-8 mr-2',
                    ),
                    span(
                      classes:
                          'font-semibold text-lg ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                      [text(AppConfig.appName)],
                    ),
                  ],
                ),
                // Navigation links
                nav(
                  classes: 'flex flex-wrap justify-center space-x-4',
                  [
                    for (var entry in AppConfig.navLinks.entries)
                      Link(to: entry.value, child: text(entry.key)),
                  ],
                ),
              ],
            ),
            div(
              classes:
                  'mt-8 border-t ${themeState.isDarkMode ? 'border-gray-700' : 'border-gray-300'} pt-8 text-center',
              [
                p(
                  classes: themeState.isDarkMode
                      ? 'text-sm text-gray-400'
                      : 'text-sm text-gray-500',
                  [text(AppConfig.footerText)],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
