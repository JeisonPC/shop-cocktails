import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="slider"
export default class extends Controller {
  connect() {}
}

import "swiper/css/bundle";

import Carousel from "stimulus-carousel";

const application = Application.start();
application.register("carousel", Carousel);
