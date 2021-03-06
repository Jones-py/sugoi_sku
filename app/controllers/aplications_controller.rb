class AplicationsController < ApplicationController
  before_action :set_aplication, only: [:show, :edit, :update, :destroy]
  before_action :superadmin_role_only, except: [:show, :new,:create]

    def index
      @aplications=Aplication.page(params[:page]).per(3)
    end

    def new
       @aplication= Aplication.new
       @courses = Course.all
     end

    def show

    end

    def create
      @aplication = Aplication.new(aplication_params)
       @aplication.user_id = current_user.id
        if @aplication.save
         redirect_to courses_path, notice: "Your application has been recorded!"
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
    def superadmin_role_only
       unless current_user.superadmin_role?
         redirect_to courses_path, :notice => "Access denied! You need admin priviledges."
       end
     end

    def set_aplication
     @aplication = Aplication.find(params[:id])
    end

    def aplication_params
      params.require(:aplication).permit(:payment_method, :user_id, :id, :course_id)
    end
  end
