module Thug
	class GemDetector

		# initialize gemfile path
		def initialize
			cwd = Dir.getwd
			@gemfile_path = cwd + "/Gemfile"
		end

		# check if gemfile exists in the current directory
		def has_gem?
			File.file?(@gemfile_path)
		end

		# update the .lock file without installing gems
		def update_lock
			puts "updating gemfile.lock"
			`bundle lock`
			puts "updated"
		end

		# lists gems in current project
		def list_gems
			# self.update_lock

			@gemfile_path = File.expand_path(@gemfile_path)

			lockfile_path = "#{@gemfile_path}.lock"
			lockfile = Bundler::LockfileParser.new(Bundler.read_file(lockfile_path))

			lockfile.specs.map(&:name)
		end
		
	end
end
