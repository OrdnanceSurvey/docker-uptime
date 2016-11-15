// in plugins/index.js
exports.init = function() {
  require('uptime-webhooks').init();
  require('uptime-slack').init();
}