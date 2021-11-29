import { Controller } from "stimulus";
import Swiper from 'swiper/swiper-bundle.min';

export default class extends Controller {
  static targets = []

  connect() {
    const swiper = new Swiper(this.element, {
      effect: 'cards',
    });
  }


  swiper() {
    const swiper = document.querySelector('.swiper').swiper;
    console.log(swiper)
    // Now you can use all slider methods like
    swiper.slideNext();
  }
}
