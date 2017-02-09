// Download the Node helper library from www.twilio.com/docs/libraries/node#installation
// These identifiers are your accountSid and authToken from
// https://www.twilio.com/console
const accountSid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
const authToken = 'your_auth_token';
const client = require('twilio')(accountSid, authToken);

client.notify.v1
  .services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
  .credentials('CRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
  .update({
    friendlyName: 'MyCredential',
    sandbox: 'true',
  })
  .then(credential => console.log(credential.friendlyName));