require_relative "../../config/boot"
require "rtesseract"
require_relative "../../lib/rtesseract_executable"

RTesseract.configure { |c| c.command = RtesseractExecutable.path }

image_path = File.expand_path("../assets/tesseract-test-images/footage0561.tif", __dir__)
image = RTesseract.new(image_path)
puts image
