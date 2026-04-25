require_relative "../../config/boot"
require "rtesseract"
require_relative "../../lib/rtesseract_executable"

RTesseract.configure { |c| c.command = RtesseractExecutable.path }
i = 0
while i < 300
  image_path = File.expand_path("../assets/tesseract-test-images/rando-test-images/zoom-in#{format('%04d', i)}.tif", __dir__)
  compound = RTesseract.new(image_path)
  image_text = compound.to_s
  if image_text != ""
    p "#{image_text} #{File.basename(image_path)}"
  end
  i += 1
end
