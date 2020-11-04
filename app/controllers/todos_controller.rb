class TodosController < ApplicationController
  before_action :set_todo, only: %i[show destroy update]
  before_action :authenticate_user! 
  # this is to ensure that only a user can see this stuff 

  # def restricted
  # end

  def home
  end
  
  def index
    @todos = current_user.todos
  end

  def show 
  end 

  def new
      @todo = Todo.new
  end

  def create
    todo = current_user.todos.new(title: params[:todo][:title], body: params[:todo][:body], completed: params[:todo][:completed])
    todo.save 
    redirect_to todos_path
  end

  def update #edit
    @todo = Todo.find(params[:id])
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end


end