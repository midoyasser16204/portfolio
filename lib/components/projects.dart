import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', [
      div(classes: 'reveal', [
        div(classes: 'section-tag', [.text('Projects')]),
        h2([.text('Side '), span(classes: 'text-cyan', [.text('Projects')])]),
        p(classes: 'section-sub', [.text('Focused apps with specific missions.')]),
      ]),
      div(classes: 'projects-grid', [

        // ── Workability ──────────────────────────────────────────
        div(classes: 'project-card reveal', [
          div(classes: 'project-icon', [.text('♿')]),
          div(classes: 'project-name', [.text('Workability')]),
          p(classes: 'project-desc', [
            .text(
              'Accessibility-first job matching Android app for disabled users '
              'with WCAG-compliant UI, screen reader support, and role-based '
              'profile management for employers and job seekers.',
            ),
          ]),
          div(classes: 'project-tech', [
            for (final tag in ['Android', 'Kotlin', 'WCAG', 'Material Design', 'Firebase', 'DEPI'])
              span(classes: 'tech-tag', [.text(tag)]),
          ]),
          div(classes: 'project-links', [
            a(
              href: 'https://github.com/midoyasser16204/Workability-App',
              classes: 'proj-link',
              attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
              [.text('⎇ View on GitHub')],
            ),
          ]),
        ]),

      ]),
    ]);
  }
}
