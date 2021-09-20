class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        sorted = students.sort(:age).reverse
        render json: sorted
    end
end
