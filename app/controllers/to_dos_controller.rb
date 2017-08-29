class ToDosController < ApplicationController

  def index
    @todos = ToDo.all
  end

  def show
    @todo = ToDo.find(params[:id])
  end

  def new
    @todo = ToDo.new
  end

  def create
    todo = ToDo.new(todos_params)
    if todo.save
      redirect_to to_dos_path
    else
      render :new
    end
  end

  def update
    @todo = ToDo.find(params[:id])
    if @todo.update(todos_params)
      redirect_to to_do_path(@todo)
    else
      render :edit
    end
  end

  def edit
    @todo = ToDo.find(params[:id])
  end

  def destroy
    ToDo.find(params[:id]).destroy
    redirect_to to_dos_path
  end

  private
  def todos_params
    params.require(:to_do).permit(:list, :description, :completeby)
  end

end
