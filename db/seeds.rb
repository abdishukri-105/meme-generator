User.destroy_all
Meme.destroy_all


puts "🌱 Seeding messages..."


# 10.times do
#   title = Faker::Hipster.sentence(word_count: rand(2..4)).chomp('.')
#   message = Faker::ChuckNorris.fact
#   user_id = rand(1..10) 
#   Meme.create(title: title, message: message, user_id: user_id)
# end

# 10.times do
#   name = Faker::Name.name
#   email = Faker::Internate.Email.email
#   sex = Faker::Sex.sex
#   User.create(name:name, email:email, sex: sex)
# end

17.times do
    user = User.create(
        "username": Faker::Name.name,
        "email": Faker::Internet.email,
        "password_digest": Faker::Alphanumeric.alphanumeric(number: 10),
        "sex": Faker::Gender.type
    )
    rand(1..6).times do
        Meme.create(
        "title": Faker::Hobby.activity,
        "message": Faker::Quote.famous_last_words,
        "user_id": user.id,
    )
    end
end

puts "✅ Done seeding!"
