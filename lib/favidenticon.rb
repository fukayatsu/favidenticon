require "favidenticon/version"
require 'ruby_identicon'
require 'mini_magick'

module Favidenticon
  class Generator
    class << self
      def generate(identity, size, grid_size)
        square_size = (size - 2) / grid_size / 2 * 2
        border_size = (size - grid_size * square_size) / 2

        blob = RubyIdenticon.create(identity,
          background_color: 0,
          border_size:      border_size,
          grid_size:        grid_size,
          square_size:      square_size,
        )

        image = MiniMagick::Image.read(blob)
        image.format "ico"
        image.to_blob
      end
    end
  end
end
