class TestsController < ApplicationController

  def show
    @test = Test.find(params[:id])
  end

  def pass
    @test = Test.find(params[:test_id])
    @total_count = 0
    @user_count = 0
    @test.questions.each do |question|
      @total_count = @total_count + 1 if question.has_answers?
      @user_count = @user_count + 1 if question.right_answers.exists?(params["question_#{question.id}"])
    end
    render 'tests/show_result'
  end
end
