require_relative '../app/models/roster'
require_relative '../app/models/student'
require_relative '../app/models/teacher'

module RosterPopulator
  def populate
    rosters = Student.all.times do |student|
      Roster.new(:student_id => (0..9).sample, :teacher_id => (0..9).sample)
    end
    rosters
  end
end



