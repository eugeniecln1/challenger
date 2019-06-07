import "bootstrap";
import initPolar from "../components/dashboard";
import { toggleNav } from "../components/vertical_navbar"
import { initStarRating } from "../components/init_star_rating";
import { buttonBack } from "../components/button_back";
import { animateChallengeButton } from "../components/button_challenge";
import { autocompleteSearch } from "../components/autocomplete"


initPolar();
toggleNav();
initStarRating();
buttonBack();

if (document.getElementById('search-data')) {
  autocompleteSearch();
}

animateChallengeButton();
