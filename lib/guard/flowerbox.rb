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

    def stop
      UI.info "Stopping Guard::Flowerbox..."

      ::Flowerbox.cleanup!
    end

    def run_all
      UI.info "Guard::Flowerbox running all files..."
      ::Flowerbox.run(@options[:dir], @options)
    end

    def run_on_change(files = [])
      files = files.dup.uniq

      UI.info "Guard::Flowerbox running the following files: #{files.join(', ')}"

      if ::Flowerbox.run(@options[:dir], @options.dup.merge(:files => files)) == 0
        run_all
      end
    end
  end
end

