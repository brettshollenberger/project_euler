var _ = require('underscore');

var sum = function(array) {
  return _.reduce(array, function(start, num) {
    return start + num
  }, 0);
};

var answer = sum(_.chain(_.range(1000)).map(function(num) {
  if (num % 3 === 0 || num % 5 === 0) { return num; }
}).compact().value());

module.exports.answer = answer;
