class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
    @task = params[:task]
    @new_task = Task.create(task_params)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :details)
  end
end
