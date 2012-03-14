require 'guard'
require 'guard/guard'

require 'flowerbox'

module Guard
  class Flowerbox < Guard
    def initialize(watchers = [], options = {})
      @options = options

      super
    end

    def start
      UI.info "Guard::Flowerbox running in #{@options[:dir]}"
    end

    def run_all
      UI.info "Guard::Flowerbox running all files..."
      ::Flowerbox.run(@options[:dir], @options)
    end

    def run_on_change(files = [])
      UI.info "Guard::Flowerbox running the following files: #{files.join(', ')}"

      ::Flowerbox.run(@options[:dir], @options.dup.merge(:files => files))
    end
  end
end

