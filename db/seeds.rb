# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Remove all information
Review.destroy_all
StudentTutor.destroy_all
TutorSubject.destroy_all
Subject.destroy_all
User.destroy_all

#Add Users
 5.times do
     User.create(
         email: Faker::Internet.email,
         first_name: Faker::Name.first_name,
         last_name: Faker::Name.last_name,
         encrypted_password: '',
         role: 'Student',
         profile: Faker::Lorem.sentences)
     end

     5.times do
     User.create(
         email: Faker::Internet.email,
         first_name: Faker::Name.first_name,
         last_name: Faker::Name.last_name,
         encrypted_password: ''
         role: 'Tutor'
         profile: Faker::Lorem.sentences)
     end

    # Add Subjects
    ph = Subject.create(name: "Physics")
    cal = Subject.create(name: "Calculus")
    chem = Subject.create(name: "Chemistry")
    poli = Subject.create(name: "Political Science")
    ai = Subject.create(name: "Artificial Intelligence")
    biochem = Subject.create(name: "Biochemistry")
    h = Subject.create(name: "History")
    art = Subject.create(name: "Art")
    bmath = Subject.create(name: "Basic Math")
    bio = Subject.create(name: "Biology")



     TutorSubject.create(tutor_id: User.id.first, subject_id: 1)
     TutorSubject.create(tutor_id: User.id.last, subject_id: bmath.id)
     TutorSubject.create(tutor_id: User.id.second, subject_id: bmath.id)
     TutorSubject.create(tutor_id: User.id.last, subject_id: chem.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: poli.id)
     TutorSubject.create(tutor_id: User.id.last, subject_id: ai.id)
     TutorSubject.create(tutor_id: User.id.last, subject_id: art.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: h.id)
     TutorSubject.create(tutor_id: User.id.second, subject_id: bio.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: cal.id)

     StudentTutor.create(tutor_subject_id: TutorSubject.first, student_id:User.first, status: "Requested")
     #Reviews
     Review.create(student_tutor_id: StudentTutor.first, rating: 1, comments: Faker::Lorem.sentences)
        )


