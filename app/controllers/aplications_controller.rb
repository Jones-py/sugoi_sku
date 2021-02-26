class AplicationsController < ApplicationController
  before_action :set_aplication, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

    def index
      @aplications = Aplication.all
    end

    def new
     @aplication = Aplication.new
    end

    def show

    end

    def create
      @aplication = Aplication.new(aplication_params)
       @aplication.user_id = current_user.id
        if @aplication.save
         redirect_to aplications_path, notice: "New Course application!"
       else
         render :new
       end
     end

    def edit
    end

    def update
     @aplication=Aplication.new(aplication_params)
     if @aplication.update(aplication_params)
       redirect_to aplications_path, notice: " Course updated!"
       else
        render :edit
       end
    end

    def destroy
      @aplication.destroy
      redirect_to aplications_path, notice:" Course Deleted!"
    end

    private
    def set_aplication
     @aplication = Aplication.find(params[:id])
    end

    def aplication_params
      params.require(:aplication).permit(:payment_method,:course_id,:user_id, :id)
    end
  end
