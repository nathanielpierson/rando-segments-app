require_relative "../../config/boot"
require_relative "../../lib/rtesseract_executable"
require "rtesseract"

RTesseract.configure { |c| c.command = RtesseractExecutable.path }
i = 0

battlefield_keywords = [ "BOB-OE", "BO-OE", "BOB-OME", "BATTER", "IELD", "BATTERIE", "BATTLEFIELD" ]
whomps_keywords = [ "HOMES", "FORTRESS", "GIHOMP", "GIROMP", "CUHOMP" ]
jolly_roger_keywords = [ "JOO", "ROGER", "Bay", "Bat" ]
cool_keywords = [ "COOL", "MOTALY", "COE", "CODE" ]
haunt_keywords = [ "BOOS", "HAUT", "HAUNT" ]
lethal_keywords = [ "LETHAL", "CETHAL", "CETHAC", "Cail" ]
sand_keywords = [ "SHIFTING", "SAME" ]
hazy_keywords = [ "Haey", "MEE", "Cave", "Hae" ]
docks_keywords = [ "DIRE", "DOORS", "GRE", "HIRE", "DOCKS" ]
snowman_keywords = [ "SHMOOMANS", "SAIOGIANS", "SOOM" ]
wet_dry_keywords = [ "WET-DRY", "WET", "WET-ORY" ]
tall_keywords = [ "TAG" "TAC", "Tate", "TaGL", "Taot", "TaGt" ]
tiny_huge_keywords = [ "TTY", "TIM", "TUM", "-HuE", "-AUBE", "THAW" ]
rainbow_keywords = [ "RATMEOO", "RIDE", "RATMBOR", "RATMIBOR", "REDE", "RATIO" "RAT BO", "RATE", "RARNBOG" ]
clock_keywords = [ "TICE", "TOGE", "TICK", "TAG", "TAC", "Go0ce" ]

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
        contains_any?(image_text, battlefield_keywords)
        p "level: Bob-omb Battlefield, time: #{minutes}:#{seconds}"
      end
    end

  rescue Errno::ENOENT, RTesseract::Error => e
  end
  i += 1
end
