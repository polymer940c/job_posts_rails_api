require "faker"

def make_skills
  skills = []
  rand(5..10).times do
    skills << Faker::Job.key_skill
  end
  skills.join(", ")
end

def lower_rand_salary
  rand(6..8) * 1000
end
def higher_rand_salary
  rand(9..20) * 1000
end

20.times do
  JobPost.create(
    title:          Faker::Job.title,
    company_name:   Faker::Company.name,
    summary:        Faker::Lorem.paragraph(4, false, 5),
    date_created:   Faker::Date.between_except(15.days.ago, 0.days.ago, Date.today),
    location:       Faker::Address.state + ", " + Faker::Address.state_abbr,
    zip:            Faker::Address.zip_code,
    latitude:       Faker::Address.latitude,

    longitude:      Faker::Address.longitude,

    skills:         make_skills,
    lower_salary:   lower_rand_salary,
    upper_salary:   higher_rand_salary
    )
end
