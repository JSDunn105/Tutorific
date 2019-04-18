class StudentTutor < ApplicationRecord

    belongs_to :tutor_subject
    has_many :reviews
    has_many :students, class_name = "User"
end
