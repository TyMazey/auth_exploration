require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'class methods' do
    describe 'authenticate' do

      it 'should validate if the email and password exsist for a user or return nil' do
        user = User.create(name: 'Ty', email: 'example@ex.com', password: '1234')

        expect(User.authenticate('example@ex.com', '1234')).to eq(user)
        expect(User.authenticate('wrong@no.com', '4321')).to eq(nil)
      end
    end
  end
end
