# SliverAppBar Demo - Flutter Widget Presentation

A Flutter demo app showcasing the **SliverAppBar** widget - a scrollable app bar that expands and collapses with elegant animations, commonly used in modern mobile apps for profile pages, product details, and content-rich screens.

## Widget Description
SliverAppBar creates a dynamic, collapsible app bar that integrates seamlessly with scrollable content, providing an efficient and visually appealing way to maximize screen space while maintaining navigation accessibility.

## Screenshots
![SliverAppBar Demo - Expanded State](screenshots/expanded.png)
![SliverAppBar Demo - Collapsed State](screenshots/collapsed.png)

## Three Key Properties Demonstrated

### 1. **expandedHeight** (double)
- **Purpose**: Controls the height of the app bar when fully expanded
- **Default**: If not specified, defaults to toolbar height (~56 pixels)
- **In Demo**: Set to `250.0` pixels to create a large header area
- **Effect**: Determines how much vertical space the app bar occupies at the top of the screen before scrolling
- **Why adjust it**: Larger values create more prominent headers for hero images or branding; smaller values keep the interface compact

### 2. **pinned** (bool)
- **Purpose**: Determines whether the app bar remains visible at the top when scrolled
- **Default**: `false` (app bar scrolls away completely)
- **In Demo**: Set to `true` to keep the toolbar visible
- **Effect**: When true, the app bar collapses to toolbar size but stays fixed at the top; when false, it scrolls completely off screen
- **Why adjust it**: Use true for persistent navigation access; use false for immersive, distraction-free content viewing

### 3. **floating** (bool)
- **Purpose**: Controls whether the app bar reappears immediately when scrolling up
- **Default**: `false` (must scroll to top for full expansion)
- **In Demo**: Set to `false` for deliberate, controlled expansion
- **Effect**: When true, the app bar slides back into view as soon as user scrolls up; when false, it only expands after scrolling to the very top
- **Why adjust it**: Use true for quick navigation access; use false for smoother, less intrusive scrolling experience

## Run Instructions

### Prerequisites
- Flutter SDK installed (version 2.0 or higher)
- An IDE (VS Code, Android Studio, or IntelliJ)
- An emulator or physical device

### Steps to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/JmugishaKa/sliver-appbar-demo.git
   cd sliver-appbar-demo
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

4. **Test the widget**: Scroll up and down to see the SliverAppBar expand and collapse

## Project Structure
```
lib/
  └── main.dart          # Complete demo app with SliverAppBar
screenshots/
  ├── expanded.png       # App bar in expanded state
  └── collapsed.png      # App bar in collapsed state
README.md                # This file
```

## Real-World Use Case
This demo represents a typical mobile app layout pattern seen in:
- Social media profile pages (Twitter, Instagram)
- E-commerce product detail screens (Amazon, Shopify apps)
- News article readers (Medium, Pocket)
- Music streaming apps (Spotify artist pages)

The collapsing header maximizes content visibility while maintaining navigation accessibility.

## Code Highlights
The core implementation uses a `CustomScrollView` with two slivers:
- `SliverAppBar` - The dynamic header with gradient background
- `SliverList` - Scrollable content items

```dart
CustomScrollView(
  slivers: [
    SliverAppBar(
      expandedHeight: 250.0,  // Property 1
      pinned: true,            // Property 2
      floating: false,         // Property 3
      flexibleSpace: FlexibleSpaceBar(
        title: Text('SliverAppBar Demo'),
        background: Container(...),
      ),
    ),
    SliverList(...),
  ],
)
```

## Technologies Used
- Flutter SDK
- Material Design widgets
- Dart programming language

## Author
Joshua Mugisha

## Presentation Date
11/2/2026

## License
MIT License - feel free to use this code for learning purposes.

## Acknowledgments
- Flutter documentation: https://docs.flutter.dev/cookbook/lists/floating-app-bar
- Material Design guidelines for app bars
