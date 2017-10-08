require 'thor'
# require 'natives/apps'

module Thug
  class Cli < Thor

    default_task :list

    def list(*entry_names)
      
    rescue => ex
      $stderr.puts ex.message
    end


  end

end
