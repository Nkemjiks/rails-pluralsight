# Home controller
class HomeController < ApplicationController
  def index
  end

  def about
  end

  def askquestion
    redirect_to root_path
  end
end
