module Thug
	class GemDetector

		def initialize

		end

		def has_gem?
			cwd = Dir.getwd
			gemfile_path = cwd + "/Gemfile"

			File.file?(gemfile_path)
		end

		def update_lock
			system `bundle lock`
		end

		def list_gems
			gemfile_path = File.expand_path(gemfile_path)
			lockfile_path = "#{gemfile_path}.lock"
			lockfile = Bundler::LockfileParser.new(Bundler.read_file(lockfile_path))
			
			lockfile.specs.map(&:name)
		end
		
	end
end
