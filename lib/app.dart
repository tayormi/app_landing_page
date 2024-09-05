import 'package:app_lander/pages/landing.dart';
import 'package:app_lander/pages/tos.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'components/footer.dart';
import 'pages/privacy.dart';
import 'state/theme_state.dart';

class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isDarkMode = true;

  void _toggleTheme(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ThemeState(
      isDarkMode: _isDarkMode,
      toggleTheme: _toggleTheme,
      child: div(
        classes:
            'min-h-screen ${_isDarkMode ? 'bg-gray-900 text-white' : 'bg-gray-100 text-gray-900'} flex flex-col',
        [
          Router(routes: [
            ShellRoute(
              builder: (context, state, child) => Fragment(children: [
                div(classes: 'fixed top-0 left-0 right-0 z-10', [
                  const Header(),
                ]),
                div(classes: 'flex-grow pt-24', [
                  child,
                ]),
                const Footer(),
              ]),
              routes: [
                Route(
                    path: '/',
                    title: 'Home',
                    builder: (context, state) => const LandingPage()),
                Route(
                    path: '/privacy',
                    title: 'Privacy Policy',
                    builder: (context, state) => const PrivacyPolicyPage()),
                Route(
                    path: '/tos',
                    title: 'Terms of Service',
                    builder: (context, state) => const TermsOfServicePage()),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
