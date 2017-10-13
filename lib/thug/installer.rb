module Thug
	class Installer

		def install_dependencies dependencies
			dependencies.each do |dep|
				`sudo apt-get install #{dep}`
			end
		end
	end
end