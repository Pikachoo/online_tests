module Admin
  class BaseController < ApplicationController

    protected

    MODEL_NAME = :item
    MODEL_CLASS_NAME = 'Item'
    PERMITTED_PARAMETERS = []

    def find_model
      model_class.find(params[:id])
    end

    private
    def model_class
      self.class::MODEL_CLASS_NAME.classify.constantize
    end

    def item_params
      params.require(self.class::MODEL_NAME).permit(self.class::PERMITTED_PARAMETERS)
    end

    public

    def create
      model_class.create(item_params)
    end

    def edit
      @item = find_model
    end

    def update
      find_model.update(item_params)
    end

    def destroy
      find_model.destroy
    end



  end
end
