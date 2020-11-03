class TodosController < ApplicationController
  before_action :authenticate_user!, only: [:restricted]
  # this is to ensure that only a user can see this stuff 

  # def restricted
  # end

  def home
  end
  
  def index
  end

  def new
  end

  def create
  end

end