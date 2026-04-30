require_relative "../../config/boot"
require_relative "../../lib/rtesseract_executable"
require "rtesseract"

RTesseract.configure { |c| c.command = RtesseractExecutable.path }
i = 0

keywords = [ "HOMES", "FORTRESS", "GIHOMP", "GIROMP", "CUHOMP" ]

def contains_any?(str, words)
  words.any? { |word| str.include?(word) }
end
while i < 16570
  image_path = File.expand_path("../assets/tesseract-test-images/tess-test-five/tess-test-four#{format('%05d', i)}.tif", __dir__)
  begin
    compound = RTesseract.new(image_path)
    image_text = compound.to_s
    minutes = i / 300
    if minutes < 10
      minutes = "0" + minutes.to_s
    end
    seconds = (i % 300) / 5
    if seconds < 10
      seconds = "0" + seconds.to_s
    end
    if image_text != ""
      p "image text: #{image_text} file name: #{File.basename(image_path)} time: #{minutes}:#{seconds}"
      if
        contains_any?(image_text, keywords)
        p "We're in Whomp's Fortress rn"
      end
    end

  rescue Errno::ENOENT, RTesseract::Error => e
  end
  i += 1
end
