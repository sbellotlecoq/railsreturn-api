Article.destroy_all
User.destroy_all

nb_user = 10
nb_article = 10

users = []
articles = []

# Creation of users
nb_user.times do |x|
  user = User.create!(
    email: Faker::Internet.email,
    password: "password"
  )
  users << user
  puts "Seeding user nb#{x}"
end

# Seeding articles
users.each do |user|
  nb_article.times do |y|
    article = user.articles.create!(
      title: Faker::Lorem.words(number: 2).join(" "),
      content: Faker::ChuckNorris.fact
    )
    articles << article
    puts "Seeding article nb#{y}"
  end
end
