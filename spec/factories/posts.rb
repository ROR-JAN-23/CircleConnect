FactoryBot.define do
  factory :post do|post|
    user_id {user_id}
    image {Rack::Test::UploadedFile.new("#{Rails.root}/spec/files/img1.png")}
    description {'test post'}
  end
end