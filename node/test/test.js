/*global describe, it */
'use strict';
var assert = require('assert');
var systemDetective = require('../');

describe('system-detective node module', function () {
  it('must have at least one test', function () {
    systemDetective();
    assert(false, 'I was too lazy to write any tests. Shame on me.');
  });
});
