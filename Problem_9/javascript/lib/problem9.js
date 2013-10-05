var _ = require('underscore');

function squared(num) {
  return Math.pow(num, 2);
}

function isPythagoreanTriplet(array) {
  return squared(array[0]) + squared(array[1]) == squared(array[2]);
}

function sum1000(array) {
  return array[0] + array[1] + array[2] == 1000;
}

var r = _.chain(_.range(200, 450)).toArray();

var holder = [];

r.each(function(num1) {
  r.each(function(num2) {
    r.each(function(num3) {
      if (isPythagoreanTriplet([num1, num2, num3])) { holder.push([num1, num2, num3]); };
    })
  })
})

var answer = _.chain(holder)
              .filter(function(array) { return sum1000(array) })
              .first()
              .reduce(function(start, num) { 
                return start * num;
              }, 1)
              .value();

console.log(answer == 31875000);
