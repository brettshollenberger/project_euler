var _ = require('underscore');

function sum(array) {
  return _.reduce(array, function(start, num) {
    return start + num;
  }, 0);
};

function fibUpTo(num) {
  var fib = [1, 2];
  while (_.last(fib) < num) {
    fib.push(sum(_.last(fib, 2)));
  }
  return fib;
}

var answer = sum(_.filter(fibUpTo(4000000), function(num) { return num % 2 === 0}));

console.log(answer == 4613732);
