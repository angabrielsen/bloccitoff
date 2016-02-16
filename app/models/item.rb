class Item < ActiveRecord::Base

  belongs_to :user

  validates :name, length: { minimum: 5 }, presence: true

  def due_date
  	self.created_at + 7.days
  end
end
