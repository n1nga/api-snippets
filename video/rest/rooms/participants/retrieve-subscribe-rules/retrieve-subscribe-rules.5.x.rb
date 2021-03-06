# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Find your credentials at twilio.com/console
# To set up environmental variables, see http://twil.io/secure
api_key_sid = ENV['TWILIO_API_KEY']
api_key_secret = ENV['TWILIO_API_KEY_SECRET']

@client = Twilio::REST::Client.new(api_key_sid, api_key_secret)

subscribe_rules = @client.video.rooms('RMXXXX').participants('PAXXXX')
.subscribe_rules.fetch()

subscribe_rules.rules.each do |rule|
  puts "Read rule with type = " +rule["type"]
end
