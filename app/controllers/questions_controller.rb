class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.nil?
      @answer = 'Please ask a question.'
    else
      @answer = if @question.downcase.include?('I am going to work')
                  'Great!'
                elsif @question.downcase.include?('?')
                  'Silly question, get dressed and go to work!'
                elsif @question.downcase.include?('time')
                  "The current time is #{Time.now.strftime('%I:%M %p')}."
                else
                  "I don't care, get dressed and go to work!"
                end
    end
  end
end
