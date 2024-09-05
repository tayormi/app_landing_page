import 'package:jaspr/jaspr.dart';
import '../state/theme_state.dart';
import '../config/app_config.dart';

class LandingPage extends StatelessComponent {
  const LandingPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var themeState = ThemeState.of(context);

    yield div(classes: 'min-h-screen flex flex-col', [
      // Hero section
      section(
          classes:
              'flex-1 flex flex-col justify-center items-center text-center px-4 sm:px-6 lg:px-8',
          [
            h1(
                classes:
                    'text-4xl sm:text-5xl md:text-6xl font-extrabold ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                [
                  text(AppConfig.heroTitle),
                ]),
            p(
                classes:
                    'mt-3 max-w-md mx-auto text-xl ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-600'} sm:text-2xl md:mt-5 md:max-w-3xl',
                [
                  text(AppConfig.heroSubtitle),
                ]),
            // App showcase
            div(classes: 'mt-16 max-w-lg mx-auto', [
              div(classes: 'iphone-mask', [
                img(
                    src: AppConfig.heroImage,
                    alt: 'App Screenshot',
                    classes: 'w-full h-auto'),
              ]),
            ]),
          ]),

      // Features section
      section(
          classes:
              'py-12 ${themeState.isDarkMode ? 'bg-gray-800' : 'bg-gray-100'}',
          [
            div(classes: 'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8', [
              div(classes: 'lg:text-center', [
                h2(
                    classes:
                        'text-base text-indigo-400 font-semibold tracking-wide uppercase',
                    [
                      text(AppConfig.featuresTitle),
                    ]),
                p(
                    classes:
                        'mt-2 text-3xl leading-8 font-extrabold tracking-tight ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'} sm:text-4xl',
                    [
                      text(AppConfig.featuresSubtitle),
                    ]),
                p(
                    classes:
                        'mt-4 max-w-2xl text-xl ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-500'} lg:mx-auto',
                    [
                      text(AppConfig.featuresDescription),
                    ]),
              ]),
              div(classes: 'mt-10', [
                div(
                    classes:
                        'space-y-10 md:space-y-0 md:grid md:grid-cols-2 md:gap-x-8 md:gap-y-10',
                    [
                      for (var feature in AppConfig.features)
                        div(classes: 'relative', [
                          div([
                            div(
                                classes:
                                    'absolute flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white',
                                [
                                  span(classes: 'text-2xl', [
                                    text(feature.icon),
                                  ]),
                                ]),
                            div(classes: 'ml-16', [
                              h3(
                                  classes:
                                      'text-lg leading-6 font-medium ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                                  [
                                    text(feature.title),
                                  ]),
                              p(
                                  classes:
                                      'mt-2 text-base ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-500'}',
                                  [
                                    text(feature.description),
                                  ]),
                            ]),
                          ]),
                        ]),
                    ]),
              ]),
            ]),
          ]),

      // CTA section
      section(classes: 'bg-indigo-700', [
        div(
            classes:
                'max-w-2xl mx-auto text-center py-16 px-4 sm:py-20 sm:px-6 lg:px-8',
            [
              h2(classes: 'text-3xl font-extrabold text-white sm:text-4xl', [
                span(classes: 'block', [text(AppConfig.ctaTitle)]),
                span(classes: 'block', [text(AppConfig.ctaSubtitle)]),
              ]),
              p(
                  classes: 'mt-4 text-lg leading-6 text-indigo-200',
                  [text(AppConfig.ctaDescription)]),
              div(classes: 'mt-8 flex justify-center space-x-4', [
                a(
                    classes:
                        'inline-flex items-center px-5 py-3 border border-transparent text-base font-medium rounded-md text-indigo-600 bg-white hover:bg-indigo-50',
                    href: AppConfig.appStoreLink,
                    [
                      img(
                          src: AppConfig.appStoreImage,
                          alt: 'Download on the App Store',
                          classes: 'h-10'),
                    ]),
                a(
                    classes:
                        'inline-flex items-center px-5 py-3 border border-transparent text-base font-medium rounded-md text-indigo-600 bg-white hover:bg-indigo-50',
                    href: AppConfig.playStoreLink,
                    [
                      img(
                          src: AppConfig.playStoreImage,
                          alt: 'Get it on Google Play',
                          classes: 'h-10'),
                    ]),
              ]),
            ]),
      ]),
    ]);
  }
}
