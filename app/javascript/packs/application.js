import $ from "jquery";
import "bootstrap";
import initPolar from "../components/dashboard";
import { toggleNav } from "../components/vertical_navbar"
import { initStarRating } from "../components/init_star_rating";
import { animateChallengeButton } from "../components/button_challenge";
import { autocompleteSearch } from "../components/autocomplete"

window.$ = $

initPolar();
toggleNav();
initStarRating();

if (document.getElementById('search-data')) {
  autocompleteSearch();
}

animateChallengeButton();
