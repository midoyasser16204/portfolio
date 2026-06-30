import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'experience', [
      div(classes: 'reveal', [
        div(classes: 'section-tag', [.text('Experience')]),
        h2([.text("What I've "), span(classes: 'text-cyan', [.text('Built')])]),
        p(classes: 'section-sub', [
          .text('Production apps, internship projects, and freelance work across Android and Flutter.'),
        ]),
      ]),
      div(classes: 'timeline', [

        // ── ConstructEYE ─────────────────────────────────────────
        div(classes: 'timeline-item reveal', [
          div(classes: 'timeline-logo-wrapper', attributes: const {'style': 'background-color: #13181e;'}, [
            img(src: 'images/constructEYE_logo.png', classes: 'timeline-logo', alt: 'ConstructEYE Logo', attributes: const {'style': 'background-color: transparent;'}),
          ]),
          div(classes: 'timeline-meta', [
            span(classes: 'timeline-date', [.text('Oct 2025 – Jun 2026')]),
            span(classes: 'timeline-type', [.text('Graduation Project')]),
          ]),
          h3(classes: 'timeline-title', [.text('ConstructEYE')]),
          p(classes: 'timeline-sub', [.text('Flutter Developer · Cairo, Egypt')]),
          div(classes: 'timeline-links', [
            a(
              href: 'https://github.com/midoyasser16204/constructeye',
              classes: 'chip-link',
              attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
              [i(classes: 'fa-brands fa-github', []), .text(' GitHub')],
            ),
            a(
              href: 'https://drive.google.com/file/d/1X1koMrcJeC66o_R4tK8cbE6cyH-cbHPr/view?usp=drive_link',
              classes: 'chip-link',
              attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
              [i(classes: 'fa-brands fa-android', []), .text(' APK')],
            ),
          ]),
          ul(classes: 'timeline-bullets', [
            li([
              .text('Led Flutter development delivering a '),
              strong([.text('construction site monitoring app')]),
              .text(' with real-time AI-powered safety violation detection integrated as actionable in-app alerts.'),
            ]),
            li([
              .text('Structured the codebase using '),
              strong([.text('Clean Architecture')]),
              .text(' with layer-based module organization, enabling parallel development and reducing integration conflicts.'),
            ]),
            li([
              .text('Integrated '),
              strong([.text('Firebase Auth, Firestore, Cloud Messaging, and Cloud Storage')]),
              .text(' for secure access, real-time sync, push notifications, and scalable media management.'),
            ]),
            li([
              .text('Implemented persistent app settings via '),
              strong([.text('Hydrated BLoC')]),
              .text(', preserving theme and localization preferences across sessions.'),
            ]),
            li([
              .text('Bridged mobile frontend with backend and AI teams to translate detection pipeline outputs into structured supervisor alerts.'),
            ]),
          ]),
        ]),

        // ── Planet ───────────────────────────────────────────────
        div(classes: 'timeline-item reveal', [
          div(classes: 'timeline-logo-wrapper', attributes: const {'style': 'background-color: black;'}, [
            img(src: 'images/planet_logo.png', classes: 'timeline-logo', alt: 'Planet Logo', attributes: const {'style': 'background-color: transparent;'}),
          ]),
          div(classes: 'timeline-meta', [
            span(classes: 'timeline-date', [.text('Jan 2025 – Oct 2025')]),
            span(classes: 'timeline-type', [.text('Freelance')]),
          ]),
          h3(classes: 'timeline-title', [.text('Planet')]),
          p(classes: 'timeline-sub', [.text('Flutter Developer')]),
          div(classes: 'timeline-links', [
            a(
              href: 'https://github.com/midoyasser16204/planet',
              classes: 'chip-link',
              attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
              [i(classes: 'fa-brands fa-github', []), .text(' GitHub')],
            ),
          ]),
          ul(classes: 'timeline-bullets', [
            li([
              .text('Built a full-featured '),
              strong([.text('trip management app')]),
              .text(' covering end-to-end flows from authentication to trip visualization.'),
            ]),
            li([
              .text('Architected using '),
              strong([.text('Clean Architecture + BLoC')]),
              .text(', achieving clear separation of business logic and UI.'),
            ]),
            li([
              .text('Integrated '),
              strong([.text('Dio')]),
              .text(' for RESTful API consumption with structured error states and retry logic.'),
            ]),
            li([
              .text('Implemented '),
              strong([.text('Hive')]),
              .text(' for local caching and offline-first support, ensuring seamless UX without internet.'),
            ]),
            li([
              .text('Embedded '),
              strong([.text('OpenStreetMap')]),
              .text(' for interactive trip location visualization and live route tracking.'),
            ]),
          ]),
        ]),

        // ── Job Finder ───────────────────────────────────────────
        div(classes: 'timeline-item reveal', [
          div(classes: 'timeline-logo-wrapper', attributes: const {'style': 'background-color: #5aabbc;'}, [
            img(src: 'images/job_finder_logo.png', classes: 'timeline-logo', alt: 'Job Finder Logo', attributes: const {'style': 'background-color: transparent;'}),
          ]),
          div(classes: 'timeline-meta', [
            span(classes: 'timeline-date', [.text('Jul 2025 – Aug 2025')]),
            span(classes: 'timeline-type', [.text('Internship · Link Development')]),
          ]),
          h3(classes: 'timeline-title', [.text('Job Finder')]),
          p(classes: 'timeline-sub', [.text('Android Developer')]),
          div(classes: 'timeline-links', [
            a(
              href: 'https://github.com/midoyasser16204/job_finder_app',
              classes: 'chip-link',
              attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
              [i(classes: 'fa-brands fa-github', []), .text(' GitHub')],
            ),
          ]),
          ul(classes: 'timeline-bullets', [
            li([
              .text('Independently architected and shipped a full-featured '),
              strong([.text('job search Android app')]),
              .text(' in Kotlin and Jetpack Compose from scratch within 2 months.'),
            ]),
            li([
              .text('Designed a '),
              strong([.text('Multi-Module Clean Architecture')]),
              .text(' separating data, domain, and presentation layers for independent module testing.'),
            ]),
            li([
              .text('Applied '),
              strong([.text('MVI pattern')]),
              .text(' for unidirectional data flow, resulting in predictable UI state and easier debugging.'),
            ]),
            li([
              .text('Integrated '),
              strong([.text('Retrofit + Room')]),
              .text(' for REST API consumption with full offline support and local data persistence.'),
            ]),
            li([
              .text('Implemented '),
              strong([.text('Hilt DI')]),
              .text(' across 3 modules, reducing coupling and improving testability across the application.'),
            ]),
          ]),
        ]),

      ]),
    ]);
  }
}
