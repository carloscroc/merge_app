import 'package:flutter/material.dart';
import 'home_page_model.dart';
import '../components/item_featured_workouts_widget.dart';
import '../components/item_meditive_vertical_widget.dart';
import '../components/ff_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = 'HomePage';
  static const String routePath = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late final HomePageModel _model = HomePageModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search field (uses model controller)
              TextField(
                controller: _model.searchController,
                focusNode: _model.searchFocusNode,
                decoration: InputDecoration(
                  hintText: 'Search workouts, meditations...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Hero / featured section (placeholder visually replaced by a card)
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(child: Text('Hero / Featured')),
              ),
              const SizedBox(height: 20),

              // Horizontal featured workouts using stubbed component
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(width: 8),
                    ItemFeaturedWorkoutsWidget(title: 'Quick Burn'),
                    ItemFeaturedWorkoutsWidget(title: 'Core Blast'),
                    ItemFeaturedWorkoutsWidget(title: 'Morning Flow'),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Vertical meditations list using stubbed component
              Column(
                children: const [
                  ItemMeditiveVerticalWidget(title: '5 min Breathing'),
                  ItemMeditiveVerticalWidget(title: 'Sleep Soundscape'),
                  ItemMeditiveVerticalWidget(title: 'Focus Session'),
                ],
              ),
              const SizedBox(height: 20),

              // CTA button using stubbed FFButtonWidget
              Center(
                child: FFButtonWidget(
                  onPressed: () {},
                  label: 'Start Workout',
                ),
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 40),

              // Footer / spacing
              const Center(child: Text('End of skeleton')),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }
}
