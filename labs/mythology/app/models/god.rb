class God < ActiveRecord::Base
  attr_accessible :description, :name

  def self.text_search(query)
    self.where("name @@ :q or description @@ :q", :q => query)
  end
end
