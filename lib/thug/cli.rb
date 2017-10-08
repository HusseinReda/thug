require 'thor'

module Thug
  class Cli < Thor

    default_task :list

    def list(*entry_names)
      # detect gem file and create/update gem .lock file

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
