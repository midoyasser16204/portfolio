import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer([
      .text('Built with '),
      span([.text('♥')]),
      .text(' by Mohamed Yasser Arafat · Cairo, Egypt · '),
      span([.text('2026')]),
    ]);
  }
}
