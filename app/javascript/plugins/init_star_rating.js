import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";

const initStarRating = () => {
  $('.modal').each(function() {
    $( this ).on('shown.bs.modal', function(){
      $('.modal-rating').barrating({
        theme: 'css-stars'
      });
    });
  });
};

export { initStarRating };
