module Admin
  class QuestionsController < BaseController

    private
    MODEL_NAME = :question
    MODEL_CLASS_NAME = 'Question'
    PERMITTED_PARAMETERS = [:text, :test_id]

    public
    def create
      super
      redirect_back(fallback_location: admin_test_path(params[:question][:test_id]))
    end

    def update
      super
      redirect_back(fallback_location: admin_test_path(find_model.test_id))
    end

    def destroy
      test = find_model.test
      super
      redirect_back(fallback_location: admin_test_path(test.id))
    end


  end
end
