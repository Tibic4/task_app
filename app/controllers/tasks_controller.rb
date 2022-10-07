class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save!
    redirect_to tasks_path, notice: "Task '#{task.name}' was successfully created."
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
