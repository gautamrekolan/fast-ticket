class Ticket < ActiveRecord::Base

  belongs_to :user

  validates :name, :presence => true
  validates :email, :presence => true
  validates :message, :presence => true

end
