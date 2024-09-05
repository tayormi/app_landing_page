import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../state/theme_state.dart';
import '../config/app_config.dart';

class Header extends StatefulComponent {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = RouteState.of(context).location;
    var themeState = ThemeState.of(context);

    yield header(
      classes: themeState.isDarkMode
          ? 'bg-gray-800 shadow-md'
          : 'bg-white shadow-md',
      [
        div(
          classes: 'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8',
          [
            div(
              classes: 'flex justify-between items-center h-16',
              [
                // Logo
                Link(
                  to: '/',
                  child: div(
                    classes: 'flex items-center',
                    [
                      img(
                        src: AppConfig.appLogo,
                        alt: 'Logo',
                        classes: 'h-8 w-8 mr-2',
                      ),
                      span(
                        classes:
                            'font-bold text-xl ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                        [text(AppConfig.appName)],
                      ),
                    ],
                  ),
                ),
                // Mobile menu button
                div(
                  classes: 'md:hidden',
                  [
                    button(
                      classes:
                          '${themeState.isDarkMode ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'} focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500',
                      events: {'click': (e) => _toggleMenu()},
                      [
                        span(classes: 'sr-only', [text('Open main menu')]),
                        // Hamburger icon
                        svg(
                          classes: 'h-6 w-6',
                          attributes: {
                            'fill': 'none',
                            'viewBox': '0 0 24 24',
                            'stroke': 'currentColor',
                            'aria-hidden': 'true',
                          },
                          [
                            DomComponent(
                              tag: 'path',
                              attributes: {
                                'stroke-linecap': 'round',
                                'stroke-linejoin': 'round',
                                'stroke-width': '2',
                                'd': 'M4 6h16M4 12h16M4 18h16',
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // Desktop navigation
                nav(
                  classes: 'hidden md:flex space-x-4',
                  [
                    for (var entry in AppConfig.navLinks.entries)
                      Link(
                        to: entry.value,
                        child: div(
                          classes:
                              'px-3 py-2 rounded-md text-sm font-medium ${activePath == entry.value ? (themeState.isDarkMode ? 'bg-gray-900 text-white' : 'bg-gray-200 text-gray-900') : (themeState.isDarkMode ? 'text-gray-300 hover:bg-gray-700 hover:text-white' : 'text-gray-700 hover:bg-gray-200 hover:text-gray-900')}',
                          [text(entry.key)],
                        ),
                      ),
                  ],
                ),
                // Theme toggle button
                button(
                  classes:
                      'ml-4 p-2 rounded-md ${themeState.isDarkMode ? 'bg-gray-700 text-yellow-400' : 'bg-gray-200 text-gray-800'}',
                  events: {
                    'click': (e) =>
                        themeState.toggleTheme(!themeState.isDarkMode),
                  },
                  [
                    text(themeState.isDarkMode ? '☀️' : '🌙'),
                  ],
                ),
              ],
            ),
          ],
        ),
        // Mobile navigation
        div(
          classes: 'md:hidden ${_isMenuOpen ? '' : 'hidden'}',
          [
            div(
              classes: 'px-2 pt-2 pb-3 space-y-1 sm:px-3',
              [
                for (var entry in AppConfig.navLinks.entries)
                  Link(
                    to: entry.value,
                    child: div(
                      classes:
                          'block px-3 py-2 rounded-md text-base font-medium ${activePath == entry.value ? (themeState.isDarkMode ? 'bg-gray-900 text-white' : 'bg-gray-200 text-gray-900') : (themeState.isDarkMode ? 'text-gray-300 hover:bg-gray-700 hover:text-white' : 'text-gray-700 hover:bg-gray-200 hover:text-gray-900')}',
                      [text(entry.key)],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
