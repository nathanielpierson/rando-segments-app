# frozen_string_literal: true

# rtesseract shells out to the `tesseract` binary. Editors and GUI tools often run Ruby with a
# minimal PATH, so Homebrew's /opt/homebrew/bin is missing. Prefer TESSERACT_PATH or these paths.
module RtesseractExecutable
  module_function

  def path
    env = ENV["TESSERACT_PATH"]
    return env.strip if env && !env.strip.empty? && File.executable?(env.strip)

    %w[
      /opt/homebrew/bin/tesseract
      /usr/local/bin/tesseract
    ].each { |p| return p if File.executable?(p) }

    which = `command -v tesseract 2>/dev/null`.strip
    return which unless which.empty?

    "tesseract"
  end
end
