require 'open-uri'

module Thug
	class Utils

		def internet?
			begin
			    true if open("http://www.google.com/")
			rescue
			    false
			end
		end
	end
end