const mainParagraph =
    "You’re more than just a photo. You have stories to tell, and passions to share, and things to talk about that are more interesting than the weather. Because you deserve what dating deserves: better.";

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
