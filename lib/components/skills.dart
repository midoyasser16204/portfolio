import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  static const _cats = [
    (
      'Android',
      ['Kotlin', 'Jetpack Compose', 'XML Layouts', 'MVVM', 'MVI', 'ViewModel', 'Coroutines', 'Flow', 'Hilt', 'Multi-Module', 'Gradle'],
    ),
    (
      'Flutter',
      ['Flutter', 'Dart', 'BLoC', 'Cubit', 'Hydrated BLoC', 'GetIt', 'Clean Architecture'],
    ),
    (
      'Backend & Cloud',
      ['Firebase Auth', 'Firestore', 'Cloud Messaging', 'Cloud Storage', 'REST APIs', 'Retrofit', 'Dio'],
    ),
    (
      'Data & Tools',
      ['Room', 'Hive', 'SharedPreferences', 'Git / GitHub', 'Postman', 'Android Studio', 'Unit Testing'],
    ),
    (
      'Languages',
      ['Kotlin', 'Dart', 'Java', 'C++'],
    ),
    (
      'Design & Soft Skills',
      ['Material Design 3', 'WCAG Accessibility', 'Agile', 'Cross-Functional', 'Problem-Solving'],
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'skills', [
      div(classes: 'reveal', [
        div(classes: 'section-tag', [.text('Skills')]),
        h2([.text('Technical '), span(classes: 'text-cyan', [.text('Arsenal')])]),
        p(classes: 'section-sub', [.text('Technologies I build with daily across Android and Flutter ecosystems.')]),
      ]),
      div(classes: 'skills-grid', [
        for (final cat in _cats)
          div(classes: 'skill-cat reveal', [
            div(classes: 'skill-cat-label', [.text(cat.$1)]),
            div(classes: 'skill-tags', [
              for (final tag in cat.$2)
                span(classes: 'skill-tag', [.text(tag)]),
            ]),
          ]),
      ]),
    ]);
  }
}
