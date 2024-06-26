class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_reply = ""
    if @question.downcase == "i am going to work"
      @coach_reply = "Great!"
    elsif @question.end_with?("?")
      @coach_reply = "Silly question, get dressed and go to work!"
    else
      @coach_reply = "I don't care, get dressed and go to work!"
    end
  end
end
