require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

# client.update("The correct answer is spaces.")

def run(client)
  retweetKeyword = "#Mansplaining"
  while true
    re = client.search(retweetKeyword).first.id
    client.retweet(re);
    puts "Retweet: #{re} #{Time.now}";
    sleep(90); #Every 90 seconds
  end


end

run(client);
