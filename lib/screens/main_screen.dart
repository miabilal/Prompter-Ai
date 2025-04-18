import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/theme_constants.dart';
import '../services/gemini_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _promptController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final GeminiService _geminiService = GeminiService();
  bool _isLoading = false;
  String _response = '';

  @override
  void initState() {
    super.initState();
    // Initialize with your API key
    _geminiService.initialize('//your api key');
  }

  @override
  void dispose() {
    _promptController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _generateResponse() async {
    if (_promptController.text.trim().isEmpty) return;

    setState(() {
      _isLoading = true;
      _response = '';
    });

    try {
      final response =
          await _geminiService.generateResponse(_promptController.text);
      setState(() {
        _response = response;
      });
    } catch (e) {
      setState(() {
        _response = 'Error: ${e.toString()}';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: ThemeConstants.surfaceColor,
        title: Text(
          'Prompter',
          style: GoogleFonts.orbitron(
            color: ThemeConstants.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(ThemeConstants.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (_response.isNotEmpty)
                    Container(
                      padding:
                          const EdgeInsets.all(ThemeConstants.defaultPadding),
                      decoration: BoxDecoration(
                        color: ThemeConstants.surfaceColor,
                        borderRadius: BorderRadius.circular(
                          ThemeConstants.defaultBorderRadius,
                        ),
                      ),
                      child: Text(
                        _response,
                        style: GoogleFonts.orbitron(
                          color: ThemeConstants.textColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  if (_isLoading)
                    const Padding(
                      padding: EdgeInsets.all(ThemeConstants.defaultPadding),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: ThemeConstants.primaryColor,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(ThemeConstants.defaultPadding),
            decoration: BoxDecoration(
              color: ThemeConstants.surfaceColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _promptController,
                    style: GoogleFonts.orbitron(
                      color: ThemeConstants.textColor,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your prompt...',
                      hintStyle: GoogleFonts.orbitron(
                        color: ThemeConstants.secondaryTextColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          ThemeConstants.defaultBorderRadius,
                        ),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: ThemeConstants.backgroundColor,
                    ),
                    maxLines: null,
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _generateResponse(),
                  ),
                ),
                const SizedBox(width: ThemeConstants.defaultPadding),
                IconButton(
                  onPressed: _generateResponse,
                  icon: const Icon(
                    Icons.send,
                    color: ThemeConstants.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
