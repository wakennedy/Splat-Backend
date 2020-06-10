class TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: tasks.to_json(except: [:created_at, :updated_at])
    end

    def show
        task = Task.find(params[:id])
        render json: task.to_json(except: [:created_at, :updated_at])
    end

    def create
        task = Task.create(user_params)
        render json: task.to_json(except: [:created_at, :updated_at])
    end
    def user_params
        params.require(:task).permit(:name, :description, :category)
    end
end
