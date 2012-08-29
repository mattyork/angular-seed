'use strict';

/* mocha specs for services go here */

describe('service', function() {
	var expect = chai.expect;
  beforeEach(module('myApp.services'));

  describe('version', function() {
    it('should return current version', inject(function(version) {
      expect(version).to.equal('0.1');
    }));
  });
});
