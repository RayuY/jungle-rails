require 'rails_helper'

describe Product, type: :model do

  before do
    @All = Product.new(:name => "test", :price_cents => 120000, :category_id => 2, :quantity => 134)
    @Name = Product.new(:price_cents => 120000, :category_id => 2, :quantity => 134)
    @Quantity = Product.new(:name => "test", :price_cents => 120000, :category_id => 2)
    @Price = Product.new(:name => "test", :category_id => 2, :quantity => 134)
    @Category = Product.new(:name => "test", :price_cents => 120000, :quantity => 134)

    @All.save
    @Name.save
    @Category.save
    @Quantity.save
    @Price.save

  end
  
  describe 'Validations' do
    it 'should have all fields' do
      expect(@All.name).to be_present
      expect(@All.price_cents).to be_present
      expect(@All.quantity).to be_present
      expect(@All.category_id).to be_present
    end

    it 'should have error message if name is empty' do
      expect(@Name.name).to be_nil
      expect(@Name.errors.full_messages).to include("Name can't be blank")
    end

    it 'should have error message if price_cents is empty' do
      expect(@Price.price_cents).to be_nil
      expect(@Price.errors.full_messages).to include("Price can't be blank")
    end

    it 'should have error message if quantity is empty' do
      expect(@Quantity.quantity).to be_nil
      expect(@Quantity.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should have error message if category_id is empty' do
      expect(@Category.category_id).to be_nil
      expect(@Category.errors.full_messages).to include("Category can't be blank")
    end

  end
end
