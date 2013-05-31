require_relative '../../db/config'

class Roster < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
end
