import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Oh nothing's gonna change my love for you", "I wanna spend my life with you", "Forever journeys on golden avenues", "I drift in your eyes since I love you", "I got that beat in my veins for only rule", "Love is to share, mine is for you"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
