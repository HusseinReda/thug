require 'thor'
require 'thug/loader'
require 'thug/utils'
require 'thug/http_client'
require 'thug/installer'

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

      # list gems in current project
      current_gems = gem_detector.list_gems

      # detect current os, platform and package manager
      platform_detector = Thug::PlatformDetector.new
     
      platform = platform_detector.get_platform
      os = platform_detector.get_os

      # check internet
      utils = Thug::Utils.new

      if utils.internet?
        # if connected, request system dependencies
        client = Thug::HttpClient.new
        dependencies = client.get_dependencies platform, current_gems
      else
        # if not, get system dependencies from local file
        
      end

      # run install command to install dependencies
      installer = Thug::Installer.new
      installer.install_dependencies dependencies
    rescue => ex
      $stderr.puts ex.message
    end


  end

end
