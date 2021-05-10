const { environment, config } = require('@rails/webpacker')

const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);

module.exports = environment
