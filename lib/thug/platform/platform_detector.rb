module Thug
	class PlatformDetector
		
		# get platform: ubuntu, debian, centos
		def get_platform
			
			if(/darwin/i =~ RUBY_PLATFORM)
				return "mac"
			end

			platform = `ohai platform`


			if platform =~ /ubuntu/i
				platform = "ubuntu"
			elsif platform =~ /debian/i
				platform = "debian"
			elsif platform =~ /centos/i
				platform = "centos"
			end
				
			platform
		end

		def get_os
			os = `ohai os`
			if os =~ /linux/i
				os = "linux"
			end

			os
		end

		# returns package manager of current platform
		def get_package_manager platform
			case platform
			when "ubuntu"
				pkg = "apt-get"
			when "debian"
				pkg = "apt-get"
			when "centos"
				pkg = "yum"
			when "mac"
				pkg = "brew"
			end

			pkg
		end


	end
end