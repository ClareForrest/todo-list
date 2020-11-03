class TodosController < ApplicationController
  before_action :authenticate_user!, only: [:restricted]
  # this is to ensure that only a user can see this stuff 

  # def restricted
  # end

  def home
  end
  
  def index
  end

<<<<<<< HEAD
  def new
  end

  def create
  end
  
=======
  def home 
  end 
  

>>>>>>> 1ccf5f32d8b503f3afd417f2675c75cf5c0af61f
end