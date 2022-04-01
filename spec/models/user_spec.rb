require 'rails_helper'

RSpec.describe User, type: :model do
  it 'user is valid' do
    # Arrange
    user = User.new(name: "Leandro", email:'admin@email.com', phone: "998754841", 
                     avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"), 
                     password: "123456"
                    )
    # Act

    # Assert    
    expect(user).to be_valid
  end

  it 'user is not valid' do
    # Arrange
    user = User.new(name: "Leandro", email:'admin@email.com', phone: "998754841",                     
                    password: "123456"
                   )
    # Act

    # Assert    
    expect(user).to_not be_valid
  end

  it 'user should have a name' do
    # Arrange
    user = User.new(name: "", email:'admin@email.com', phone: "998754841",                     
                    password: "123456"
                   )
    # Act

    # Assert    
    expect(user).to_not be_valid
  end
end
