# frozen_string_literal: true

require 'rubygems'
require 'excon'

config = { connect_timeout: 1.0000 }
# config = { connect_timeout: 0.0001 }
excon = Excon.new('https://postman-echo.com/get?foo1=bar1&foo2=bar2', config)

begin
  response = excon.request(method: :get,
                           headers: {
                             'Authorization' => 'Basic 0123456789ABCDEF'
                           })
  puts "body: #{response.body}" # This is a String
  puts "headers: #{response.headers}" # This is an Excon::Headers object
  puts "content type header: #{response.headers['Content-Type']}" # String
  puts "remote_ip: #{response.remote_ip}" # String
  puts "status: #{response.status}" # Integer
rescue Excon::Error::Timeout => e
  puts e
end
