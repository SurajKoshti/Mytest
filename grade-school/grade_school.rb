class School
  def initialize
    @name = []
    @grade = []
  end
  def add(name, grade)
    @name.push(name)
    @grade.push(grade)
  end
  def students(grade)
    result=[]
    (0..@grade.length-1).each do |i|
      result.push(@name[i])  if @grade[i] == grade
    end
    result.sort!
    check = result.uniq!
    if check == nil
      p result
    else
      p check
    end
  end
  def students_by_grade
    output = []
    student_array = []
    grade_array =[]
    (0..@grade.length-1).each do |g|
      grade_array.push(@grade[g])
      student_array.push(@name[g])
    end
    uniq_grade = grade_array.uniq.sort
    uniq_grade.each do |grade|
      op = Hash.new
      std=[]
      (0..@grade.length-1).each do |g|
        if @grade[g] == grade
          std.push(@name[g])
        end
      end
      std = std.sort
      op[:grade] = grade
      op[:students] = std
      output.push(op)
    end
    output
  end
end
