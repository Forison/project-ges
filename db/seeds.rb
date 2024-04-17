user = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  birthday: Faker::Date.birthday,
  role: 'admin'
)


teacher = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  birthday: Faker::Date.birthday,
  role: 'teacher'
)

student = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  birthday: Faker::Date.birthday,
  role: 'teacher'
)
5.times do
school = School.create(
  name: Faker::Name.name,
  user_id: user.id,
  teachers: [teacher.id]
)
Course.create(
  name: Faker::Name.name,
  description: Faker::Lorem.paragraph(sentence_count: 5),
  duration: '3 months',
  course_outline: '',
  students: [student.id],
  school_id: school.id,
  course_teacher_id: teacher.id
)
end
