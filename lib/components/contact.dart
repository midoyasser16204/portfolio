import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'contact', [
      div(classes: 'contact-card reveal', [
        h2([.text("Let's "), span(classes: 'text-cyan', [.text('Connect')])]),
        p([
          .text(
            'Open to Android and Flutter opportunities. '
            'Cairo-based, remote-friendly. Let\'s build something great.',
          ),
        ]),
        div(classes: 'contact-links', [

          a(
            href: 'mailto:yassermido13@gmail.com',
            classes: 'contact-row',
            [
              span(classes: 'contact-row-icon', [.text('✉️')]),
              div([
                span(classes: 'contact-row-label', [.text('Email')]),
                span(classes: 'contact-row-val', [.text('yassermido13@gmail.com')]),
              ]),
            ],
          ),

          a(
            href: 'tel:+201151332822',
            classes: 'contact-row',
            [
              span(classes: 'contact-row-icon', [.text('📞')]),
              div([
                span(classes: 'contact-row-label', [.text('Phone')]),
                span(classes: 'contact-row-val', [.text('+20 115 133 2822')]),
              ]),
            ],
          ),

          a(
            href: 'https://linkedin.com/in/mohamed-yasser-4164582a5',
            classes: 'contact-row',
            attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
            [
              span(classes: 'contact-row-icon', [.text('💼')]),
              div([
                span(classes: 'contact-row-label', [.text('LinkedIn')]),
                span(classes: 'contact-row-val', [.text('Mohamed Yasser')]),
              ]),
            ],
          ),

          a(
            href: 'https://github.com/midoyasser16204',
            classes: 'contact-row',
            attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
            [
              span(classes: 'contact-row-icon', [.text('🐙')]),
              div([
                span(classes: 'contact-row-label', [.text('GitHub')]),
                span(classes: 'contact-row-val', [.text('midoyasser16204')]),
              ]),
            ],
          ),

        ]),
      ]),
    ]);
  }
}
