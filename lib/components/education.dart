import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class EducationSection extends StatelessComponent {
  const EducationSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'education', [
      div(classes: 'reveal', [
        div(classes: 'section-tag', [.text('Education & Certs')]),
        h2([.text('Learning '), span(classes: 'text-cyan', [.text('Path')])]),
        p(classes: 'section-sub', [
          .text('Formal education, intensive programs, and certifications.'),
        ]),
      ]),

      // ── Education cards ──────────────────────────────────────
      div(classes: 'edu-grid', [

        div(classes: 'edu-card reveal', [
          span(classes: 'edu-icon', [i(classes: 'fa-solid fa-graduation-cap', [])]),
          div(classes: 'edu-title', [.text('B.Sc. Computer Science')]),
          div(classes: 'edu-org', [.text('October 6 University · Giza, Egypt')]),
          div(classes: 'edu-date', [.text('Sep 2022 – Jun 2026 · GPA 3.77/4')]),
          p(classes: 'edu-detail', [
            .text('Data Structures, Algorithms, OOP, Mobile Development, Software Engineering'),
          ]),
        ]),

        div(classes: 'edu-card reveal', [
          span(classes: 'edu-icon', [i(classes: 'fa-solid fa-mobile-screen', [])]),
          div(classes: 'edu-title', [.text('Digital Egypt Pioneers Initiative (DEPI)')]),
          div(classes: 'edu-org', [.text('Mobile App Development · Ministry of Communications')]),
          div(classes: 'edu-date', [.text('2024')]),
          p(classes: 'edu-detail', [
            .text('6-month intensive training in Android and Flutter mobile development.'),
          ]),
        ]),

        div(classes: 'edu-card reveal', [
          span(classes: 'edu-icon', [i(classes: 'fa-solid fa-building', [])]),
          div(classes: 'edu-title', [.text('Android Development Internship')]),
          div(classes: 'edu-org', [.text('Link Development · Cairo, Egypt')]),
          div(classes: 'edu-date', [.text('Jul 2025 – Aug 2025')]),
          p(classes: 'edu-detail', [
            .text('Real-world Android development with Kotlin, Jetpack Compose, and multi-module architecture.'),
          ]),
        ]),

      ]),

      // ── Award banner ─────────────────────────────────────────
      div(classes: 'award-banner reveal', [
        div(classes: 'award-trophy', [i(classes: 'fa-solid fa-trophy', [])]),
        div(classes: 'award-text', [
          h3([.text('Finalist — Rally Egypt Entrepreneurship Competition · 2026')]),
          p([
            .text(
              'AAST Entrepreneurship Center / National Bank of Egypt (NBE) · Giza Region. '
              'Qualified to the final stage as part of the ConstructEYE team '
              'among top university teams in Egypt.',
            ),
          ]),
        ]),
      ]),
    ]);
  }
}
