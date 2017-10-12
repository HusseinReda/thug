require 'net/http'

module Thug
	class HttpClient
		
		def get_dependencies platform, gems
			uri = URI('http://localhost:1337/dependencies')
			res = Net::HTTP.post_form(uri, 'gems' => gems, 'platform' => platform)
			puts res.body
			res.body
		end
	end
end