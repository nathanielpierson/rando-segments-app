require_relative "../../config/boot"
require_relative "../../lib/rtesseract_executable"
require "rtesseract"
require "mini_magick"

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
tall_keywords = [ "TAG" "TAC", "Tate,", "TaGL", "Taot", "TaGt" ]
tiny_huge_keywords = [ "TTY", "TIM", "TUM", "-HuE", "-AUBE", "THAW", "ISLAND" ]
rainbow_keywords = [ "RATMEOO", "RIDE", "RATMBOR", "RATMIBOR", "REDE", "RATIO" "RAT BO", "RATE", "RARNBOG" ]
clock_keywords = [ "TICE", "TOGE", "TICK", "TAG", "TAC", "Go0ce" ]

def contains_any?(str, words)
  words.any? { |word| str.include?(word) }
end
while i < 16570
  image_path = File.expand_path("../assets/tesseract-test-images/tess-test-six/tess-test-six#{format('%05d', i)}.tif", __dir__)
  begin
    compound = RTesseract.new(image_path)
    MiniMagick.configure do |config|
  config.warnings = false
    end
    image_text = compound.to_s
    image = MiniMagick::Image.open(image_path)
    image.format "png"
    image.colorspace "Gray"
    image.alpha "remove"
    mean = image["%[mean]"]  # average brightness
    minutes = i / 300
    if minutes < 10
      minutes = "0" + minutes.to_s
    end
    seconds = (i % 300) / 5
    if seconds < 10
      seconds = "0" + seconds.to_s
    end
    if image_text != ""
      # p "image text: #{image_text} file name: #{File.basename(image_path)} time: #{minutes}:#{seconds}"
      if
        contains_any?(image_text, battlefield_keywords)
        p "level: Bob-omb Battlefield, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, whomps_keywords)
        p "level: Whomp's Fortress, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, jolly_roger_keywords)
        p "level: Jolly Roger Bay, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, cool_keywords)
        p "level: Cool, Cool Mountain, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, haunt_keywords)
        p "level: Big Boo's Haunt, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, lethal_keywords)
        p "level: Lethal Lava Land, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, sand_keywords)
        p "level: Shifting Sand Land, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, hazy_keywords)
        p "level: Hazy Maze Cave, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, docks_keywords)
        p "level: Dire, Dire Docks, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, snowman_keywords)
        p "level: Snowman's Land, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, wet_dry_keywords)
        p "level: Wet-Dry World, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, tall_keywords)
        p "level: Tall, Tall Mountain, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, tiny_huge_keywords)
        p "level: Tiny Huge Island, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, rainbow_keywords)
        p "level: Rainbow Ride, time: #{minutes}:#{seconds}"
      elsif
        contains_any?(image_text, clock_keywords)
        p "level: Tick Tock Clock, time: #{minutes}:#{seconds}"
      end
    elsif mean.to_f < 10
        p "black, #{mean} mean brightness"
    end
  rescue Errno::ENOENT, RTesseract::Error => e
  end
  i += 1
end
