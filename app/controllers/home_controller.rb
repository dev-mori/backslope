class HomeController < ApplicationController
  before_action :sign_in_required, only: [:show]
  def show
  end
  def index
  end


end
