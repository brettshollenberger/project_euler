var _ = require('underscore');

function isPrime(num) {
  var returner = true;
  _.each(_.range(2, num), function(test) { 
    if (num % test === 0) { returner = false; } 
  });
  return returner;
}

function isFactor(num, test) {
  return test % num === 0
};

var answer = 0;
_.each(_.range(8000), function(num) {
  if (isFactor(num, 600851475143) && isPrime(num)) {
    answer = num;
    return;
  };
});

console.log(answer == 6857);
