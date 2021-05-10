const { environment } = require('@rails/webpacker')

const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);

module.exports = environment
