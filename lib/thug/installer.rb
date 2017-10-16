module Thug
	class Installer

		def install_dependencies (pkg, dependencies)
			deps = dependencies.join(" ")

			puts `sudo #{pkg} install #{deps}`
		end
	end
end