class AppConfig {
  static const String appName = 'Your Indie App';
  static const String appLogo = 'https://placehold.co/40x40?text=Logo';

  static const Map<String, String> navLinks = {
    'Home': '/',
    'Privacy': '/privacy',
    'Terms': '/tos',
  };

  static const String heroTitle = 'Your Indie App';
  static const String heroSubtitle =
      'Discover the power of our revolutionary indie app that will change the way you work and play.';
  static const String heroImage =
      'https://placehold.co/640x1386?text=App+Screenshot';

  static const String featuresTitle = 'Features';
  static const String featuresSubtitle = 'Everything you need';
  static const String featuresDescription =
      'Lorem ipsum dolor sit amet consect adipisicing elit. Possimus magnam voluptatum cupiditate veritatis in accusamus quisquam.';

  static const List<Feature> features = [
    Feature(
      title: 'Feature 1',
      description:
          'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.',
      icon: '🚀',
    ),
    Feature(
      title: 'Feature 2',
      description:
          'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.',
      icon: '💡',
    ),
    Feature(
      title: 'Feature 3',
      description:
          'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.',
      icon: '🔧',
    ),
    Feature(
      title: 'Feature 4',
      description:
          'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.',
      icon: '📊',
    ),
  ];

  static const String ctaTitle = 'Ready to dive in?';
  static const String ctaSubtitle = 'Download now and start your journey.';
  static const String ctaDescription =
      'Available on iOS and Android. Download now and experience the future.';
  static const String appStoreLink = '#';
  static const String appStoreImage =
      'https://placehold.co/120x40?text=App+Store';
  static const String playStoreLink = '#';
  static const String playStoreImage =
      'https://placehold.co/135x40?text=Google+Play';

  static const String footerText =
      '© 2023 Your Indie App, Inc. All rights reserved.';

  // Privacy Policy
  static const String privacyTitle = 'Privacy Policy';
  static const String privacyLastUpdated = 'Last updated: May 1, 2023';
  static const List<PrivacySection> privacySections = [
    PrivacySection(
      title: 'Introduction',
      content:
          'This Privacy Policy describes how Your Indie App ("we", "our", or "us") collects, uses, and shares your personal information when you use our mobile application.',
    ),
    PrivacySection(
      title: 'Information We Collect',
      content:
          'We collect information that you provide directly to us, such as when you create an account, use our services, or contact us for support. This may include your name, email address, and usage data.',
    ),
    PrivacySection(
      title: 'How We Use Your Information',
      content:
          'We use the information we collect to provide, maintain, and improve our services, to communicate with you, and to comply with legal obligations.',
    ),
  ];

  // Terms of Service
  static const String tosTitle = 'Terms of Service';
  static const String tosLastUpdated = 'Last updated: May 1, 2023';
  static const List<TOSSection> tosSections = [
    TOSSection(
      title: 'Acceptance of Terms',
      content:
          'By accessing or using Your Indie App, you agree to be bound by these Terms of Service and all applicable laws and regulations.',
    ),
    TOSSection(
      title: 'Use of the Service',
      content:
          'You may use our service for your personal, non-commercial use only. You must not use the service for any illegal or unauthorized purpose.',
    ),
    TOSSection(
      title: 'User Accounts',
      content:
          'You are responsible for maintaining the confidentiality of your account and password. You agree to accept responsibility for all activities that occur under your account.',
    ),
  ];

  // Landing page layout configuration
  static const bool useAlternativeFeatureLayout =
      false; // Set to true to use the new layout
}

class Feature {
  final String title;
  final String description;
  final String icon;

  const Feature(
      {required this.title, required this.description, required this.icon});
}

class PrivacySection {
  final String title;
  final String content;

  const PrivacySection({required this.title, required this.content});
}

class TOSSection {
  final String title;
  final String content;

  const TOSSection({required this.title, required this.content});
}
