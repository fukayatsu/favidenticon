require 'thor'
require 'favidenticon'
require 'securerandom'

module Favidenticon
  class CLI < Thor

    desc 'version', 'show gem version'
    def version
      puts Favidenticon::VERSION
    end

    map 'g' => 'generate'
    desc 'generate [identity] [options]', 'generate favicon (short-cut alias: "g")'
    option :size, type: :numeric, desc: 'favicon size (default to 16)', aliases: '-s'
    option :grid, type: :numeric, desc: 'grid size min: 4, max: 9 (default to 5)'
    def generate(identity = SecureRandom.hex)
      size = options[:size] || 16
      grid = options[:grid] || 5
      blob = Generator.generate(identity, size, grid)
      File.open("favicon.ico", "wb") { |f| f.write(blob) }
    end
  end
end