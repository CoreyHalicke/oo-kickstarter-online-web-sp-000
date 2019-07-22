require 'pry'
class Backer
  attr_reader :name
  @@backed_projects = []

  def initialize(name)
    @name = name
  end

  def backed_projects
    @@backed_projects
  end

  def back_project(project)
    if @@backed_projects.find { |i| i.title == project.title }
    else
      @@backed_projects << project
      project.add_backer(self)
    end
  end


end
