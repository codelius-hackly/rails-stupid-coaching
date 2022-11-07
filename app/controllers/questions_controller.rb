class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]
    if question.downcase == "hello"
      @answer = "I don't care, get dressed and go to work!"
    elsif question.downcase == "what time is it?"
      @answer = "It's now #{Time.now.asctime}!"
    elsif question.empty?
      @answer = "Didn't you want to ask me something? Try again..."
    else
      @answer = "Silly question, get dressed and go to work!"
    end
  end
end
