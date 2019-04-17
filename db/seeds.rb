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

# Subjects

sub = []

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

 5.times do
     User.create(
         email: Faker::Internet.email,
         first_name: Faker::Name.first_name,
         last_name: Faker::Name.last_name,
         encrypted_password: ''
         role: 'Student'
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

     TutorSubject.create(tutor_id: User.id.first, subject_id: chem.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: poli.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)
     TutorSubject.create(tutor_id: User.id.first, subject_id: ph.id)


     )
