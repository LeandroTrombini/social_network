require 'rails_helper'

RSpec.describe Admin, type: :model do
  it 'admin is valid' do
    # Arrange
    admin = Admin.new(email:'admin@email.com', password: '123456')
    # Act

    # Assert
    expect(admin.email).to eq 'admin@email.com'
    expect(admin).to be_valid
  end

  it 'admin is not valid' do
    # Arrange
    admin = Admin.new(email:'admin@email.com')
    # Act

    # Assert    
    expect(admin).to_not be_valid
  end
end
