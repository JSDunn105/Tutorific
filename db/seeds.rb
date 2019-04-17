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

10.times do
    User.create(
         email: Faker::Internet.email,
         first_name: Faker::Name.first_name,
         last_name: Faker::Name.last_name,
         profile: Faker::Lorem.sentences,
     )
end

# Users (Tutors)
jill = User.create(first_name: "Jill", last_name: "Valentine", profile: "I love to teach discrete math. It's one of the most amazing subjects")
tom = User.create(first_name: "Tom", last_name: "Cruise", profile: "I was formely one of the greatest actors, but I found my passion in Chemistry")
malik = User.create(first_name: "Malik", last_name: "Siddiqi", profile: "My name is Malik Siddiqi and I love teach history.")
james = User.create(first_name: "James", last_name: "Bond", profile: "The worlds best spy, now teaching and mastering the art of artificial intelligence")
kim = User.create(first_name: "Kim", last_name: "Bradford", profile: "I love teaching biology, since I have a PhD")
john = User.create(first_name: "John", last_name: "Cena", profile: "You can't see me, but I teach physics")
scott = User.create(first_name: "Scott", last_name: "Thompson", profile: "My favorite subject is calculus, since I'm a descendent of Newton")
trump = User.create(first_name: "Donald", last_name: "Trump", profile: "I can't teach political science, because I'm into real estate. Ask me again, and you're fired!")
kovacs = User.create(first_name: "Takeshi", last_name: "Kovacs", profile: "I'm from the feature, but I can teach biochemistry")
ryan = User.create(first_name: "Ryan", last_name: "Reynolds", profile: "I'm in the new Pokemon movie, but I can teach you something about art")
 

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

     TutorSubject.create(
         tutor_id: User.id.first
     )
