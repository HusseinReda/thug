require 'thor'
require 'thug/gem_detector'

module Thug
  class Cli < Thor

    default_task :list

    desc 'thug list', 'lists system dependencies in current project'
    def list(*entry_names)
      # detect gem file and create/update gem .lock file
      gem_detector = Thug::GemDetector.new
      
      unless gem_detector.has_gem?
        raise Exception.new("No Gemfile was found in the current directory")
      end

      current_gems = gem_detector.list_gems
      puts current_gems

      # detect current os, platform and package manager

      # check internet
      # if connected, request system dependencies

      # if not, get system dependencies from local file

      # run install command to install dependencies
    rescue => ex
      $stderr.puts ex.message
    end


  end

end
