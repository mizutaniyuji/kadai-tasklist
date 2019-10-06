# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..26).each do |number|
  User.create(name: "テックちゃん" + number.to_s + "号", email: "testemail" + number.to_s + "@Techacademy.jp", password: "testpassword" + number.to_s)
end

first_id = User.first.id
last_id = User.last.id
i = 0

while first_id + i <= last_id
  (1..26).each do |number|
    User.find(first_id + i).tasks.create(content: "task example" + number.to_s, status: number.to_s+"%")
  end
  i += 1
end