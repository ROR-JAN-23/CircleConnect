FactoryBot.define do
  factory :story do
    user_id {1}
    after(:build) do |story|
    story.story.attach(
      io: File.open("#{Rails.root}/spec/files/img1.png"),
      filename: 'img1.png',
      content_type: 'application/png'
      )
    end
  end
end