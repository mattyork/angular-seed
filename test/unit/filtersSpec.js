'use strict';

/* mocha specs for filters go here */

describe('filter', function() {
	var expect = chai.expect;
  beforeEach(module('myApp.filters'));


  describe('interpolate', function() {
    beforeEach(module(function($provide) {
      $provide.value('version', 'TEST_VER');
    }));


    it('should replace VERSION', inject(function(interpolateFilter) {
      expect(interpolateFilter('before %VERSION% after')).to.equal('before TEST_VER after');
    }));
  });
});
