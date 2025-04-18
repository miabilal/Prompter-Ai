class OnboardingModel {
  final String title;
  final String description;
  final String imagePath;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: 'Welcome to Prompter',
    description:
        'Your AI-powered conversation companion for endless possibilities',
    imagePath: 'assets/images/1.svg',
  ),
  OnboardingModel(
    title: 'Smart Conversations',
    description:
        'Engage in meaningful conversations with advanced AI technology',
    imagePath: 'assets/images/2.svg',
  ),
  OnboardingModel(
    title: 'Get Started',
    description:
        'Begin your journey into the future of AI-powered communication',
    imagePath: 'assets/images/3.svg',
  ),
];
