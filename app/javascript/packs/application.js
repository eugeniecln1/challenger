import "bootstrap";
import initPolar from "../components/dashboard";
import { toggleNav } from "../components/vertical_navbar"
import { initStarRating } from "../components/init_star_rating";
import { animateChallengeButton } from "../components/button_challenge";
import initConfetti from "../components/init_confetti.js"
import { autocompleteSearch } from "../components/autocomplete"

initPolar();
toggleNav();
initStarRating();
initConfetti();

if (document.getElementById('search-data')) {
  autocompleteSearch();
}

animateChallengeButton();
