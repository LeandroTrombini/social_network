FactoryBot.define do
  factory :user do
    name { "Leandro" }
    email { "user@user.com" }
    phone { "999999999" }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') }
    password { "123456" }
  end
end