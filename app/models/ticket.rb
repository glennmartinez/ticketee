class Ticket < ActiveRecord::Base
  belongs_to :project
  #rails generate model ticket title:string description:text project:references
  validates :title, :presence => true
  validates :description, :presence => true,
			:length => { :minimum => 10}


end
