class SubjectsController < ApplicationController
    before_action :set_course

    def create
        @subject = @course.subjects.build subject_params
        if @subject.save
            redirect_to course_path(@course)
        else
            @subjects = @course.subjects.all
            render 'courses/show'
        end
    end
    
    def destroy
        subject = @course.subjects.find params[:id]
        subject.destroy
        redirect_to course_path(@course)
    end

    private
    
    def subject_params
        params.require(:subject).permit(:title, :faculty)
    end

    def set_course
        @course = Course.find params[:course_id]
    end
end