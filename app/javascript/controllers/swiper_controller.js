import { Controller } from "stimulus";
import Swiper from 'swiper/swiper-bundle.min';
// import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = []
  // static values = { url: String }

  connect() {
    // const a = this.element;
    // const b = a.firstElementChild;
    // const c = b.firstElementChild;
    // console.log(this.urlValue);
    const swiper = new Swiper(this.element, {
      effect: 'cards',
      grabCursor: true,
    });
    // const urlSwiper = this.urlValue
    // fetch(urlSwiper)

    swiper.on('slideNextTransitionStart', function () {
      console.log("slide is disliked");
      console.log(swiper.slides[swiper.activeIndex - 1].dataset.swiperUrlValue);
      console.log(swiper);
    });

    swiper.on('slidePrevTransitionStart', function () {
      console.log('slide is liked');
      console.log(swiper.slides[swiper.activeIndex].dataset.swiperUrlValue);
      console.log(swiper);
    });
  }
}




// listen to the event : swipe left(dislike) or swipe rigth (like)
// if swipe left --> dislike artwork, remove it and save the event
// if swipe right --> like artwork, remove it and save the event
// AJAX (fetch method)

// swiper() {
//   const swiper = document.querySelector('.swiper').swiper;
//   console.log(swiper)
//   // Now you can use all slider methods like
//   swiper.slideNext();
// }
