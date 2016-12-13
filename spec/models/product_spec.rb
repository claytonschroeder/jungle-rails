
require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    before :each do
      @category = Category.create
    end

    it 'should have a valid test subject' do
      @product = Product.new(name: 'Testing', price: 18, quantity: 10, category: @category)
      expect(@product).to be_valid
    end

    it 'should have a valid name' do
      @product = Product.new(name: 'Testing', price: 18, quantity: 10, category: @category)
      @product.name = nil
      expect(@product).to_not be_valid
      @product.name = ''
      expect(@product).to_not be_valid
      @product.name = ' '
      expect(@product).to_not be_valid
    end

    it 'should have a valid price' do
      @product = Product.new(name: 'Testing', price: 18, quantity: 10, category: @category)
      @product.price = 'ten'
      expect(@product).to_not be_valid
      @product.price = ''
      expect(@product).to_not be_valid
      @product.price = ' '
      expect(@product).to_not be_valid
    end

    it 'should have a valid quantity' do
      @product = Product.new(name: 'Testing', price: 18, quantity: 10, category: @category)
      @product.quantity = 'ten'
      expect(@product).to_not be_valid
      @product.quantity = ''
      expect(@product).to_not be_valid
      @product.quantity = ' '
      expect(@product).to_not be_valid
    end

    it 'should have a valid category' do
      @product = Product.new(name: 'Testing', price: 18, quantity: 10, category: nil)
     expect(@product).to_not be_valid
    end
  end
end