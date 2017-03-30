require "twitter"
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

#CHOOSE THIS...

sleep rand(2..5)
puts "Done"
count = 1
client.search('realtor', result_type: "recent").take(Integer(500)).collect do |tweet|
  puts "Count              Tweet URl                 Username                                    tweet"
  puts "(#{count})      #{tweet.url})    #{tweet.user.screen_name}                          #{tweet.text}";
  sleep(3);
  count=count+1;
  client.fav tweet;
  sleep rand(25..26)
end


#OR THIS...

count = 1
client.search('real estate', result_type: "recent").take(Integer(500)).collect do |tweet|
  puts "Count              Tweet URl                 Username                                    tweet"
  puts "(#{count})      #{tweet.url})    #{tweet.user.screen_name}                          #{tweet.text}";
  sleep(3);
  count=count+1;
  client.fav tweet;
  sleep rand(25..26)
end

puts "done"

#OR THIS...


count = 1
client.search('new listing', result_type: "recent").take(Integer(500)).collect do |tweet|
    puts "Count              Tweet URl                 Username                                    tweet"
    puts "(#{count})      #{tweet.url})    #{tweet.user.screen_name}                          #{tweet.text}";
    sleep(3);
    count=count+1;
    client.fav tweet;
    sleep rand(25..26)
end

puts "done"
