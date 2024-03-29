require "slack"
require './translate.rb'

TOKEN = ENV["SLACKTOKEN"]

Slack.configure {|config| config.token = TOKEN }
client = Slack.realtime

client.on :hello do
  puts '接続しました'
end

client.on :message do |data|
  text = data['text']
  result = translate(text)
  result = result[0]["translated_text"]
  #answer = japanese_regex(result)
  params = {
    token: TOKEN,
    channel: "#general",
    text: "---\nこれが良いと思います\n=>        #{result}\n---"
  }
  Slack.chat_postMessage params
end

client.start
