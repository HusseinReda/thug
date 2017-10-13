require 'net/http'
require 'json'

module Thug
	class HttpClient
		
		def get_dependencies platform, gems
			uri = URI('http://localhost:1337/dependencies')
			res = Net::HTTP.post_form(uri, 'gems[]' => gems, 'platform' => platform)
			deps = JSON.parse(res.body)
			dependencies = deps.map do |dep|
				dep["name"]
			end

			dependencies
		end
	end
end