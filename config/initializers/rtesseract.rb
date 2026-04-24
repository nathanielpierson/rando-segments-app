# frozen_string_literal: true

require "rtesseract"
require Rails.root.join("lib/rtesseract_executable").to_s

RTesseract.configure { |c| c.command = RtesseractExecutable.path }
