module Admin
  class TestsController < BaseController

    private
    MODEL_NAME = :test
    MODEL_CLASS_NAME = 'Test'
    PERMITTED_PARAMETERS = [:name, :is_public]

    public
    def index
      @tests = Test.all
      @test = Test.new
    end

    def create
      super
      redirect_back(fallback_location: admin_tests_path)
    end

    def update
      super
      redirect_to edit_admin_test_path(find_model)
    end

    def destroy
      super
      redirect_back(fallback_location: admin_tests_path)
    end

  end
end
