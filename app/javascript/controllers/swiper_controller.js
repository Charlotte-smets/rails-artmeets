import { Controller } from "stimulus";
import Swiper from 'swiper/swiper-bundle.min';

export default class extends Controller {
  static targets = []

  connect() {
    const swiper = new Swiper(this.element, {
      effect: 'cards',
      grabCursor: true,
    });
    const wrapper = this.element.firstElementChild;
    const slide = wrapper.firstElementChild;
    console.log(slide);

    swiper.on('slideNextTransitionStart', function () {
      console.log("slide is disliked");
    });
    swiper.on('slidePrevTransitionStart', function () {
      console.log('slide is liked');
    });
  }
}

// swiper() {
//   const swiper = document.querySelector('.swiper').swiper;
//   console.log(swiper)
//   // Now you can use all slider methods like
//   swiper.slideNext();
// }
