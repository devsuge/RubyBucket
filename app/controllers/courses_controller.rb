class CoursesController < ApplicationController
    before_action :set_course, only: %i[show destroy edit update]
    
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
    end

    def update
        if @course.update course_params
            redirect_to courses_path
        else
            render :new
        end
    end

    def destroy
        @course.destroy
        redirect_to courses_path
    end

    def show
        @subject = @course.subjects.build
        @subjects = @course.subjects.order created_at: :desc
    end

    private

    def course_params
        params.require(:course).permit(:title)
    end
    
    def set_course
        @course = Course.find_by id: params[:id]
    end
    
end