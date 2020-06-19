require 'json'
require 'net/http'
require 'open-uri'

class GetRequester

    def initialize(url)
        # GetRequester is a class that initializes with a url string    
        @url = url
    end

    def get_response_body
        # get_response_body is an instance method on the GetRequester class
        Net::HTTP.get_response(URI.parse(@url)).body
        # get_response_body sends a GET request to the URL provided on initialization, returning the body of the request
    end

    def parse_json
        # parse_json is an instance method on the GetRequester class
        JSON.parse(get_response_body)
        # parse_json converts JSON returned from 'get_response_body' into Ruby data structures
    end
end