import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

// const autocompleteSearch = () => {
//   const searchInput = document.getElementById('role_models');
//   if (searchInput) {
//     role_models( { container: searchInput })
//   }
// };
const autocompleteSearch = function() {
  const role_models = JSON.parse(document.getElementById('search-data').dataset.role_models_search)
  const searchInput = document.getElementById('search-bar');

  if (role_models && searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
          term = term.toLowerCase();
          const choices = role_models;
          const matches = [];
          for (let i = 0; i < choices.length; i++)
              if (~choices[i].toLowerCase().indexOf(term)) matches.push(choices[i]);
          suggest(matches);
      },
    });
  }
};

export { autocompleteSearch };
