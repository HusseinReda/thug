module Thug
	class PlatformDetector
		
		# get platform: ubuntu, debian, centos
		def get_platform
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
			
		end


	end
end