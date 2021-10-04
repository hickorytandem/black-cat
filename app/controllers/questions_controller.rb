class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question]
    if @question.downcase.include? "black cat" && "?"
      @cat_answer = "I don't talk about myself."
    elsif @question.end_with?"?"
      @cat_answer = "Should we ever care about such things?"
    elsif @question.downcase.start_with?"i"
      @cat_answer = "We shouldn't always think of ourselves, right?"
    else
      @cat_answer = "Wonderful! The meaning of life is to take value in your experience. Go forth brave life soldier!"
    end

  end

  def home

  end

end
