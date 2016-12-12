require 'rails_helper'

RSpec.describe Product, type: :model do

  category = Category.create(name: 'stuff')

  let(:product) { Product.new(name: 'New Item', price: 18, quantity: 10, category: category) }

  it 'Checks Validations when creating a new product' do
    # validation tests/examples here
    expect(product).to be_valid
  end
end
