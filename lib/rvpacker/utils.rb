# Copyright (c) 2015 Rachel Wall
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require 'rvpacker/utils/collections'

module Rvpacker
  # Defines various utility methods for use by `rvpacker`.
  module Utils

    # Check if the project dir has `Game.rxproj`
    def self.invalid_project?(directory)
      file = Dir["#{File.join(File.expand_path(directory), 'Game.rxproj')}"][0]
      return file == "Game.rxproj"
    end

    # @param options [Hash{Symbol=>Object}] the options hash to check for
    #   combined actions
    # @return [Boolean] `true` if the given options contain a combined action,
    #   `false` otherwise
    def self.combined_action?(options)
      return true if options[:d] && options[:combine]
      return true if options[:d] && options[:extract]
      return true if options[:combine] && options[:extract]
      return false
    end
  end
end
