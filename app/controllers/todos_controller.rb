class TodosController < ApplicationController
  before_action :authenticate_user!, only: [:restricted]
  # this is to ensure that only a user can see this stuff 

  # def restricted
  # end

  def home
  end
  
  def index
    @todos = Todo.all
  end

  def new

  end

  def create



  end

  def show
    
  end

 



  def edit
    @todo = Todo.find(params[:id])
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end
end