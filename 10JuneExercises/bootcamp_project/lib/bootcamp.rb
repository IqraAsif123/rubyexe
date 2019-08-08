class Bootcamp
   #Part 1
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades =Hash.new{ |grades,keys| @grades[keys]=[] }
    end
    def name
        @name
    end
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(teacher)
        @teachers << teacher
    end
    def enroll(student)
        if students.size < @student_capacity
            @students << student
            return true
        end
        return false
    end
    def enrolled?(student)
        @students.include?(student)
        # @students.each do |student|
        #     if student == string
        #         return true
        #     end
        #     return false
        # end
    end
    #part 2
    def student_to_teacher_ratio
        @students.size / @teachers.size
    end
    def add_grade(student,grade)
        if enrolled?(student) == true
            @grades[student].push(grade)
            return true
        else 
            return false

        end

    end
    def num_grades(student)
        @grades[student].size
    end
    def average_grade(student)
        if enrolled?(student) && num_grades(student) > 0
            return @grades[student].sum / @grades[student].count
        end
    end

end