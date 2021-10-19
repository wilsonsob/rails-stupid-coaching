class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
      if @question.downcase == 'I am going to work right now!'
        @answer = 'Great!'
      elsif @question.end_with?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = 'I dont care, get dressed and go to work!'
      end
  end
end
