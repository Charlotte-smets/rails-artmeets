import { Controller } from "stimulus";
import Swiper from 'swiper/swiper-bundle.min';
import { csrfToken } from "@rails/ujs";
import Swal from 'sweetalert2';

export default class extends Controller {
  static targets = []

  connect() {
    const swiper = new Swiper(this.element, {
      effect: 'cards',
      loop: true,
      grabCursor: true,
      centeredSlides: true,
      followFinger: true,
    });

    swiper.on('slideNextTransitionStart', function () {
      // console.log("slide is disliked");
      // const btnDislike = document.querySelector('.btn-next');
      // console.log(btnDislike);
      // btnDislike.style.backgroundColor = 'red';
      const urlDislike = `/gallerists/${swiper.slides[swiper.previousIndex].dataset.galleristId}/dislike?artwork=${swiper.slides[swiper.previousIndex].dataset.artworkId}`
      fetch(urlDislike, {
        method: 'POST',
        headers: { 'Accept': 'application/json', 'X-CSRF-Token': csrfToken() },
      })
      .then(response => response.json())
      .then((data) => {
        swiper.removeSlide(swiper.activeIndex - 2);
      });
      // btnDislike.style.backgroundColor = 'transparent';
    });

    // swiper.on('slideNextTransitionEnd', function () {
    //   // console.log("slide is disliked");
    //   const btnDislike = document.querySelector('.btn-next');
    //   btnDislike.style.backgroundColor = 'transparent';
    // });

    swiper.on('slidePrevTransitionStart', function () {
      // console.log('slide is liked');
      const urlLike = swiper.slides[swiper.previousIndex].dataset.swiperUrlValue;
      // console.log(urlLike);
      fetch(urlLike, {
        method: 'POST',
        headers: { 'Accept': 'application/json', 'X-CSRF-Token': csrfToken() },
      })
      .then(response => response.json())
      .then((data) => {
        // console.log(data);
        // document.querySelector(`[data-artwork-id="${data.artwork_id}"]`).remove()
        const match = data.match;
        if (match === true) {
          const swalWithCustomsButtons = Swal.mixin({
            customClass: {
              confirmButton: 'btn-keep-swiping',
              cancelButton: 'btn-keep-swiping',
            },
            cancelButtonText: 'Keep swiping',
            confirmButtonText: 'Keep swiping',
            buttonsStyling: false
          })
          swalWithCustomsButtons.fire({
            title: "<h2><strong>It's an arty match!<strong></h2>",
            text: "We hope you will have a beautiful art story together",
            html:
              `We hope you will have a beautiful art story with <strong>${data.artist_name}</strong>!` + '<hr>' +
              `<a href="/artists/${data.artist_id}"><button class="btn-next">Profile</button></a>` +
              `<a href="/chatrooms/${data.chatroom_id}"><button class="btn-love-modal">Contact</button></a>`,
            // showCancelButton: true,
            // // confirmButtonColor: '#3085d6',
            // // cancelButtonColor: '#d33',
            // confirmButtonText: 'Profile',
            // cancelButtonText: 'Contact',
            backdrop: `rgba(0,0,0,0.4)`
          })
          swiper.removeSlide(swiper.activeIndex);
          swiper.slideTo(-1, 0, false);
        } else {
          swiper.removeSlide(swiper.activeIndex);
          swiper.slideTo(-1, 0, false);
        }
      });
    });
  }
}
