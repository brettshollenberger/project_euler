var _ = require('underscore');

var sum = function(array) {
  return _.reduce(array, function(start, num) {
    return start + num
  }, 0);
};

var answer = sum(_.compact(_.map(_.range(1000), function(num) {
  if (num % 3 === 0 || num % 5 === 0) {
    return num;
  }
})));

console.log(answer);
