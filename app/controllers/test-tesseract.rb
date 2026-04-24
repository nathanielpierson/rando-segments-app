require_relative "../../config/boot"
require "tesseract"

e = Tesseract::Engine.new { |e|
  e.language  = :eng
  e.blacklist = "|"
}

e.text_for("app/assets/tesseract-test-images/footage0561.tif").strip
