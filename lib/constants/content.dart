const mainParagraph ="We are here to help you reap the benefits of aligning your businisses with emerging ecological incentives"
const tagline=
    "HE Consulting: realigning money and ecology";
class Testimonial {
  String client;
  String testimonial;
  String? logo;
  Testimonial(this.testimonial, this.client, {this.logo});
}

final exampleTestimonial = Testimonial(
  'We partnered with Untitled for our rebrand and launch and raised over 40M in series A',
  'Dribbble',
);
