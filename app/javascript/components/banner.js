import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typeElement = document.getElementById('banner-typed-text');
  if (typeElement) {
    new Typed('#banner-typed-text', {
      strings: ["Share your lonely moments with a pet Cuddle pet is your solution", "doubting to take a pet? try Cuddle pet", "Share your love with a pet even if its just for a day! cuddle pet", "Love is to share, mine is for you"],
      typeSpeed: 100,
      loop: true
    });
  }

}

export { loadDynamicBannerText };
