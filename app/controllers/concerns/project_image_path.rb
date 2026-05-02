# Resolves a stored filesystem path to a file under Rails.root (for send_file).
module ProjectImagePath
  extend ActiveSupport::Concern

  private

  def safe_path_for_stored(raw)
    return nil if raw.blank?

    expanded = Pathname.new(raw.to_s).expand_path(Rails.root)
    return nil unless expanded.file?

    root = Rails.root.realpath
    real = expanded.realpath
    return nil unless real.to_s.start_with?(root.to_s + File::SEPARATOR) || real == root

    real.to_s
  rescue Errno::ENOENT, SystemCallError
    nil
  end
end
