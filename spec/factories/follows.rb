FactoryBot.define do
  factory :follow do
    follower_id {User.first.id}
    user_id {user_id}
  end
end
