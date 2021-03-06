import $ from "jquery";
import "bootstrap";
import initPolar from "../components/dashboard";
import { toggleNav } from "../components/vertical_navbar";
import { initStarRating } from "../components/init_star_rating";
import { animateChallengeButton } from "../components/button_challenge";
import initConfetti from "../components/init_confetti.js";
import { autocompleteSearch } from "../components/autocomplete";
import { initUpdateNavbarOnScroll } from "../components/navbar";

initPolar();
toggleNav();
initStarRating();
initConfetti();
initUpdateNavbarOnScroll();

if (document.getElementById('search-data')) {
  autocompleteSearch();
}

if (document.getElementById('newchallenge')) {
  animateChallengeButton();
}

