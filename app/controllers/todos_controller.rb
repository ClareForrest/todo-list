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

  def show 
  end 

  def new
      @todo = Todo.new
  end

  def create
    Todo.create(title: params[:title], body: params[:body], completed: params[:completed])
    redirect_to todos_path
  end

end