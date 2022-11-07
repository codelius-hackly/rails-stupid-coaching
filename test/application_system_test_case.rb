require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :headless_chrome

  # ORIGINAL CONTENT of this class

  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
