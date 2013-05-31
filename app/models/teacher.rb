require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students, :through => :rosters

  validates :email,:uniqueness => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :phone, :format => { :with => /1?\(?\d{3}[-).\s]{0,2}\d{3}[-).\s]?\d{4}/}

  def name
    "#{self.first_name} #{self.last_name}"
  end


end
