require 'net/http'
require 'uri'
require 'json'
require 'faraday'
require 'pry'



def translate(text)
  token = ENV["CODICTOKEN"]

  conn = Faraday.new(:url => "https://api.codic.jp") do |faraday|
    faraday.request  :url_encoded
    faraday.response :logger
    faraday.adapter  Faraday.default_adapter
  end

  res = conn.get do |req|
    req.url '/v1/engine/translate.json', {
      text: text,
    }
    req.headers["Authorization"] =  "Bearer #{token}"
  end
  result = JSON.parse(res.body)
  puts result
  return result
end


def japanese_regex(result)
  if result =~ /\A(?!\d*\z)[a-z0-9]+\z/i
    "~~~\nこれが良いと思います\n=>#{result[0]["translated_text"]}"
  else
    "変換できない文字が見つかりました。"
  end
end
