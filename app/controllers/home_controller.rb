class HomeController < ApplicationController

  def index
    @tests = Test.published
  end
end
