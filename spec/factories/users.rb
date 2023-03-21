FactoryBot.define do
  factory :user do

    user_name {'John'}
    first_name { 'John' }
    last_name  { 'Doe' }
    email { 'john@email_provider.com' }
    password {"123456"}
    password_confirmation {"123456"}
  end
end