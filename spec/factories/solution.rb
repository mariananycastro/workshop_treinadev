FactoryBot.define do
  factory :challenge_user do
    user 
    challenge
    anwer { 'answer'}
  end
end
