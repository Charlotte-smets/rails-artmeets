import { Controller } from "stimulus";
import Swiper from 'swiper/swiper-bundle.min';
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = []
  // static values = { url: String }

  connect() {
    const swiper = new Swiper(this.element, {
      effect: 'cards',
      loop: true,
      grabCursor: true,
      centeredSlides: true,
      effect: 'flip',
      followFinger: true,
    });

    console.log(swiper);
    console.log(swiper.previousIndex);
    console.log(swiper.activeIndex);

    swiper.on('slideNextTransitionStart', function () {
      console.log("slide is disliked");
      const urlDislike = `/gallerists/${swiper.slides[swiper.previousIndex].dataset.galleristId}/dislike?artwork=${swiper.slides[swiper.previousIndex].dataset.artworkId}`
      console.log(swiper.slides[swiper.previousIndex]);
      console.log(urlDislike);
      fetch(urlDislike, {
        method: 'POST',
        headers: { 'Accept': 'application/json', 'X-CSRF-Token': csrfToken() },
      })
      .then(response => response.json())
      .then((data) => {
        // document.querySelector(`[data-artwork-id="${data.artwork_id}"]`).remove()
        console.log(swiper);
        console.log(swiper.previousIndex);
        console.log(swiper.activeIndex);
        swiper.removeSlide(swiper.activeIndex - 2);
      });
    });

    swiper.on('slidePrevTransitionStart', function () {
      console.log('slide is liked');
      const urlLike = swiper.slides[swiper.previousIndex].dataset.swiperUrlValue;
      console.log(urlLike);
      fetch(urlLike, {
        method: 'POST',
        headers: { 'Accept': 'application/json', 'X-CSRF-Token': csrfToken() },
        // redirect: 'follow'
      })
      .then(response => response.json())
      .then((data) => {
        // console.log(data);
        // document.querySelector(`[data-artwork-id="${data.artwork_id}"]`).remove()
        console.log(swiper);
        console.log(swiper.previousIndex);
        console.log(swiper.activeIndex);
        swiper.removeSlide(swiper.activeIndex);
        swiper.slideTo(-1, 0, false);
      });
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
