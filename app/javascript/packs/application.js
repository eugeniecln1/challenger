import "bootstrap";
import initPolar from "../components/dashboard";
import { toggleNav } from "../components/vertical_navbar"
import { initStarRating } from "../components/init_star_rating";
import { buttonBack } from "../components/button_back";
import { autocompleteSearch } from "../components/autocomplete"
import { animateChallengeButton } from "../components/button_challenge";

initPolar();
toggleNav();
initStarRating();
buttonBack();
autocompleteSearch();
animateChallengeButton();
