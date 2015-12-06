(function(){

  var patterns = document.querySelectorAll('.vault');
  var search = document.querySelectorAll('.js-sort-this')[0];
  var empty_state = document.querySelectorAll('.vault__no-results')[0];
  var pattern_array = [];

  for (var i = 0; i < patterns.length; i++) {
    var pattern = patterns[i];
    pattern_array.push(pattern.getAttribute('data-element'));

    console.log(pattern_array);
  }

  search.addEventListener('keyup', sortPatterns);

  function sortPatterns(e) {
    var input = e.target;
    var val   = input.value;
    var rx     = new RegExp(val, "i");

    var results = pattern_array.filter(function(item){
      return rx.test(item);
    })


    if(results == 0) {
      empty_state.style.display = 'block';
    } else {
      empty_state.style.display = 'none';
    }

    for (var i = 0; i < patterns.length; i++) {
      patterns[i].classList.add('vault--hidden');

    }

    for (var i = 0; i < results.length; i++) {
      var pos = pattern_array.indexOf(results[i]);

      if (pos >= 0) {
        patterns[pos].classList.remove('vault--hidden');
      }
    }
  }

})();