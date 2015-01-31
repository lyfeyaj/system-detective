#!/usr/bin/env node
'use strict';
var meow = require('meow');
var systemDetective = require('./');

var cli = meow({
  help: [
    'Usage',
    '  system-detective <input>',
    '',
    'Example',
    '  system-detective Unicorn'
  ].join('\n')
});

systemDetective(cli.input[0]);
