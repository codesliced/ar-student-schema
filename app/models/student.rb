require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email,:uniqueness => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :phone, :format => { :with => /1?\(?\d{3}[-).\s]{0,2}\d{3}[-).\s]?\d{4}/}
  validate :age_greater_than_five

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    if Time.new.month < self.birthday.month
      (Time.new.year - self.birthday.year) -1
    else 
      (Time.new.year - self.birthday.year)
    end

  end

  def age_greater_than_five
    if self.age < 5
      errors.add(:age, "Must not be a toddler")
    end
  end

end
