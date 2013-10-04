var _ = require('underscore');

function isPalindrome(num) {
  return num.toString() == _.toArray(num.toString()).reverse().join('');
}

var largest_product = 0;

_.chain(_.range(900, 999)).each(function(num) {
  _.chain(_.range(900, 999)).each(function(num2) {
    if (isPalindrome(num2 * num)) {
      largest_product = num2 * num;
    }
  })
})

console.log(largest_product == 906609);
