var _ = require('underscore');

function factorial(num) {
  return _.chain(_.range(1, num + 1)).reduce(function(start, num) {
    return start * num;
  }, 1).value();
};

console.log(factorial(100));
