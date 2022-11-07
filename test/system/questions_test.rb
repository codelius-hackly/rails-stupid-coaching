require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "div", text: "Stupid Coach"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    take_screenshot
    click_on "Ask"
    take_screenshot

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking an EMPTY question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: ""
    take_screenshot
    click_on "Ask"
    take_screenshot

    assert_text "Didn't you want to ask me something? Try again..."
  end

  test "asking ANY other question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "sldfkj"
    take_screenshot
    click_on "Ask"
    take_screenshot

    assert_text "Silly question, get dressed and go to work!"
  end
end
