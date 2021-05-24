class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @a = "Great!"
    @b = "Silly question, get dressed and go to work!"
    @c = "I don't care, get dressed and go to work!"
    @d = "HEY! FUCK YOU!"

    @question = params[:question]

    if @question
      if @question.downcase == "i am going to work"
        @answer = @a
      elsif @question.downcase == "you're a bitch"
        @answer = @d
      elsif @question[-1] == "?"
        @answer = @b
      else
        @answer = @c
      end
    end
  end

  def home
  end
end
