var euler1 = require('../lib/euler1');

describe('Euler 1 Solution', function() {
  
  beforeEach(function() {
    euler1 = euler1;
  });

  it('should equal 233168', function() {
    expect(euler1.answer).toEqual(233168);
  });
});
