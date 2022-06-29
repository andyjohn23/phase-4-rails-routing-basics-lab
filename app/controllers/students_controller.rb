class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grading = Student.order("grade DESC")
        render json: grading
    end
end
