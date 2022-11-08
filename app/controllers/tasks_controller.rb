class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    
    def new
        @task = Task.new
    end
    
    def create
        @task = Task.new(task_params)
        @task.save

        redirect_to tasks_path(@tasks)
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)

        redirect_to tasks_path
    end

    def show
        @tasks= Task.all
        @task = @tasks.find(params[:id])
    end

    private

    def task_params
    params.require(:task).permit(:title, :detail, :completed)
    end
end
