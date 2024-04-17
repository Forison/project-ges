user = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  birthday: Faker::Date.birthday,
  role: 'admin'
)

10.times do
teacher = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  birthday: Faker::Date.birthday,
  role: 'teacher'
)
School.create(
  name: Faker::Name.name,
  user_id: user.id,
  teachers: [teacher.id]
)
end