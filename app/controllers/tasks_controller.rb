class TasksController < ApplicationController
  def show
    @task = get_task(params[:id])
    @select_options = User.all.map { |i| [i.name, i.id] }
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @task = get_task(params[:id])
  end

  def update
    @task = get_task(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit'
    end
  end

  def destroy
    @task = get_task(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def assign
    @task = get_task(params[:id])
    @task.users = @task.users << User.find(params[:task][:users])
    unless @task.save
      flash[:error] = 'Sorry, something went wrong. Please try again.'
    end
    redirect_to task_path(@task)
  end

  def remove
    @task = get_task(params[:task_id])
    @task.users.delete User.find(params[:id])
    unless @task.save
      flash[:error] = 'Sorry, something went wrong. Please try again.'
    end
    redirect_to task_path(@task)
  end

  private

    def get_task(id)
      Task.find(id)
    end

    def task_params
      params.require(:task).permit(:name, :description, :completed)
    end

end
