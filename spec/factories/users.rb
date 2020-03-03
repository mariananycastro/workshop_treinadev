FactoryBot.define do
  factory :user do
    email { 'teste@test.com' }
    password { '123456' }
    login { 'treinadev' }
  end
end
