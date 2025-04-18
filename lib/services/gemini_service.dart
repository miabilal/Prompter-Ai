import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static final GeminiService _instance = GeminiService._internal();
  factory GeminiService() => _instance;
  GeminiService._internal();

  late final GenerativeModel _model;
  bool _isInitialized = false;

  void initialize(String apiKey) {
    if (_isInitialized) return;

    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: apiKey,
    );
    _isInitialized = true;
  }

  Future<String> generateResponse(String prompt) async {
    if (!_isInitialized) {
      throw Exception(
          'GeminiService not initialized. Call initialize() first.');
    }

    try {
      final content = [Content.text(prompt)];
      final response = await _model.generateContent(content);
      return response.text ?? 'No response generated';
    } catch (e) {
      throw Exception('Failed to generate response: $e');
    }
  }
}
