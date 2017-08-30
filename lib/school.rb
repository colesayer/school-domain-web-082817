require 'pry'
class School

attr_reader :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade]<< name
    else
      @roster[grade] = []
      @roster[grade]<< name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.sort
    @roster.map {|k,v| [k,v.sort]}.to_h
  end



end
