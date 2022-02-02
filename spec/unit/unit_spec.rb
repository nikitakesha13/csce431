# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',
                        author: 'J. K. Rowling', 
                        price: '100', 
                        date: '1997-06-26')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    subject.author = nil
    subject.price = nil
    subject.date = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(title: 'harry potter', 
                        author: 'J. K. Rowling', 
                        price: 'Hello', 
                        date: '1997-06-26')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

end