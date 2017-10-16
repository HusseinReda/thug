module Thug
	class Installer

		def install_dependencies dependencies
			dependencies.each do |dep|
				puts `sudo apt-get install #{dep}`
			end
		end
	end
end