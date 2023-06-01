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
    validates :name, :instructor, presence: true

    belongs_to :instructor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User
        

    belongs_to :enrollments
<<<<<<< HEAD


    has_many :enrolled_students, through: :enrollments, source: :student
    has_many :prerequisite, through: :courses, source: :prereq

=======
    
    has_many :enrolled_students, through: :enrollments, source: :student

    belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course,
        optional: true

>>>>>>> ac51cc1 (prerequisite pt 1)
end
