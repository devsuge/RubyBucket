class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end
    
    def create
        @course = Course.new course_params
        if @course.save
            redirect_to courses_path
        else
            render :new
        end
    end

    def edit
        @course = Course.find_by id: params[:id]
    end

    def update
        @course = Course.find_by id: params[:id]
        if @course.update course_params
            redirect_to courses_path
        else
            render :new
        end
    end

    def destroy
        @course = Course.find_by id: params[:id]
        @course.destroy
        redirect_to courses_path
    end

    def show
        @course = Course.find_by id: params[:id]
    end

    private

    def course_params
        params.require(:course).permit(:title)
    end
    
end