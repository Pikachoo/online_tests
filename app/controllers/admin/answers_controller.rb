module Admin
  class AnswersController < BaseController


    private
    MODEL_NAME = :answer
    MODEL_CLASS_NAME = 'Answer'
    PERMITTED_PARAMETERS = [:text, :question_id, :is_correct]

    public

    def create
      super
      redirect_to edit_admin_question_path(params[:answer][:question_id])
    end

    def update
      super
      redirect_to edit_admin_question_path(find_model.question_id)
    end

    def destroy
      question = find_model.question
      super
      redirect_to edit_admin_question_path(question.id)
    end
    def new
      @answer = Answer.new(question_id: params[:question_id])
    end


  end
end
