import "bootstrap";
import "../plugins/flatpickr"

import { loadDynamicBannerText } from '../components/banner';

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

import { initUpdateNavbarOnScroll } from '../components/navbar';

import { initUpdateNavbarOnScrolllink } from '../components/navbar';

import { initUpdateNavbarOnScrollmenu } from '../components/navbar';


initUpdateNavbarOnScrolllink();
initUpdateNavbarOnScrollmenu();
initUpdateNavbarOnScroll();
loadDynamicBannerText();
initMapbox();


// if ((document).ready(onPage1Load)) {
//   import { loadDynamicBannerText } from '../components/banner'
// };
// loadDynamicBannerText();

// if ("body#home").on("load", function() {
//   import { loadDynamicBannerText } from '../components/banner'
// };
// loadDynamicBannerText();
