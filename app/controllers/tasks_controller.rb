class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  def create
    task = Task.create(params[:task])
    redirect_to root_path
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.delete
    redirect_to root_path
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
    redirect_to root_path
  end
end
