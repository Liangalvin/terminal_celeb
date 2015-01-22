require 'HTTParty'

puts "What is the ip address?"
ip = gets.chomp

url = "#{ip}"
#myurl = "http://alvin.princesspeach.nyc:3000"
#url = "http://localhost:3000/"
response = HTTParty.get(url)

puts "This is your hint #{response['GabrielAldana']}"

continue = true
while continue
  puts "Who is the celebrity?(Dont be wrong dirt bag)"
  answer = gets.chomp

  #url_ans = "http://#{ip}/#{answer}"
  #url_ans = "http://localhost:3000/#{answer}"
  url_ans = "#{url}/#{answer}"
  response = HTTParty.get(url_ans)

  if response['correct']
    puts "#{response['correct']}, Now waste your time somewhere else dirt bag"
    continue = false
  else
    puts "#{response['incorrect']}"
    continue = true

  end
end
