require 'twilio-ruby'

# Get your Account SID and Auth Token from twilio.com/console
# To set up environmental variables, see http://twil.io/secure
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
service_sid = 'ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
client = Twilio::REST::Client.new(account_sid, auth_token)

# List the channels
service = client.chat.v2.services(service_sid)
service.channels.each do |c|
  puts "#{c.sid} \"#{c.unique_name}\""
end
