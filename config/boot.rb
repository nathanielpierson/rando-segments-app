ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.

# ffi-inline (dependency of tesseract-ocr) calls File.exists?, removed in Ruby 3.2.
unless File.respond_to?(:exists?)
  class << File
    alias_method :exists?, :exist?
  end
end

require "bootsnap/setup" # Speed up boot time by caching expensive operations.
