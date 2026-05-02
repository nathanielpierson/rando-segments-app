# require_relative "../../config/boot"
require_relative "../../config/environment"
require_relative "../../lib/rtesseract_executable"
require "rtesseract"
require "mini_magick"

def bump_current_frame!(image_path)
  return unless File.file?(image_path)

  record = CurrentFrame.first_or_initialize
  record.image_url = image_path
  record.save!
end

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
tall_keywords = [ "TAG", "TAC", "Tate,", "TaGL", "Taot", "TaGt" ]
tiny_huge_keywords = [ "TTY", "TIM", "TUM", "-HuE", "-AUBE", "THAW", "ISLAND" ]
rainbow_keywords = [ "RATMEOO", "RIDE", "RATMBOR", "RATMIBOR", "REDE", "RATIO", "RAT BO", "RATE", "RARNBOG" ]
clock_keywords = [ "TICE", "TOGE", "TICK", "TAG", "TAC", "Go0ce" ]

def contains_any?(str, words)
  words.any? { |word| str.include?(word) }
end
while i < 16570
  image_path = File.expand_path("../assets/tesseract-test-images/tess-png-test-six/tess-png-test-six#{format('%05d', i)}.png", __dir__)
  begin
    bump_current_frame!(image_path)
    compound = RTesseract.new(image_path)
    MiniMagick.configure do |config|
  config.warnings = false
    end
    image_text = compound.to_s
    image = MiniMagick::Image.open(image_path)
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
      p "image text: #{image_text} file name: #{File.basename(image_path)} time: #{minutes}:#{seconds}"
      if
        contains_any?(image_text, battlefield_keywords)
        Frame.create(
          level_id: 1,
          image_path: image_path,
          frame_type: "level",
          time: "#{minutes}:#{seconds}"
        )
        p "level: Bob-omb Battlefield, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, whomps_keywords)
        Frame.create(
          level_id: 2,
          image_path: image_path,
          frame_type: "level",
          time: "#{minutes}:#{seconds}"
        )
        p "level: Whomp's Fortress, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, jolly_roger_keywords)
        Frame.create(
        level_id: 3,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
        )
        p "level: Jolly Roger Bay, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, cool_keywords)
        Frame.create(
        level_id: 4,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Cool, Cool Mountain, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, haunt_keywords)
        Frame.create(
        level_id: 5,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Big Boo's Haunt, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, lethal_keywords)
        Frame.create(
        level_id: 7,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Lethal Lava Land, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, sand_keywords)
        Frame.create(
        level_id: 8,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Shifting Sand Land, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, hazy_keywords)
        Frame.create(
        level_id: 6,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Hazy Maze Cave, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, docks_keywords)
        Frame.create(
        level_id: 9,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Dire, Dire Docks, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, snowman_keywords)
        Frame.create(
        level_id: 10,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Snowman's Land, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, wet_dry_keywords)
        Frame.create(
        level_id: 11,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Wet-Dry World, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, tall_keywords)
        Frame.create(
        level_id: 12,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Tall, Tall Mountain, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, tiny_huge_keywords)
        Frame.create(
        level_id: 13,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Tiny Huge Island, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, rainbow_keywords)
        Frame.create(
        level_id: 14,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Rainbow Ride, time: #{minutes}:#{seconds}"
        i += 30
      elsif contains_any?(image_text, clock_keywords)
        Frame.create(
        level_id: 15,
        image_path: image_path,
        frame_type: "level",
        time: "#{minutes}:#{seconds}"
       )
        p "level: Tick Tock Clock, time: #{minutes}:#{seconds}"
        i += 30
      end
    elsif mean.to_f < 10
        p "black, #{mean} mean brightness at #{minutes}:#{seconds} file name: #{File.basename(image_path)}"
        i += 10
    end
  rescue Errno::ENOENT, RTesseract::Error => e
  end
  i += 1
end
