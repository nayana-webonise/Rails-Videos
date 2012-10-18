class Project < ActiveRecord::Base
  attr_accessible :project_name

  def self.search(search)
    if search
    find(:all,:conditions => ['project_name LIKE ?',"%#{search}%"])
    else
    find(:all)
    end
  end
end
