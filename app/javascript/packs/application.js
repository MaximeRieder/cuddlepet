import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';


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
