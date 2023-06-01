# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    belongs_to :enrollments


    has_many :enrolled_students, through: :enrollments, source: :student
    has_many :prerequisite, through: :courses, source: :prereq

end
