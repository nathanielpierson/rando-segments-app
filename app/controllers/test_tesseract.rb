require_relative "../../config/boot"
require "rtesseract"
require_relative "../../lib/rtesseract_executable"

RTesseract.configure { |c| c.command = RtesseractExecutable.path }

image_path = File.expand_path("../assets/tesseract-test-images/footage0561-crop.tif", __dir__)
compound = RTesseract.new(image_path)
image_text = compound.to_s
p image_text
# p "nis"
