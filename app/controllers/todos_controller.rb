class TodosController < ApplicationController
  def index
    @todos = Todo.all
    render 'todo/index'
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save!
      render 'todo/show'
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      render 'todo/show'
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def destroy
    todo = Todo.find(params[:id])

    if todo
      todo.destroy
      render json: todo
    else
      render json: "todo not found"
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :done)
  end
end
