FactoryBot.define do
  factory :poly_comment do
    content {'my first comment'}
    user_id {user_id} 
    commentable {commentable}
  end
end
  