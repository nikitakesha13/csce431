# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',
                        author: 'J. K. Rowling', 
                        price: '100', 
                        date: '1997-06-26')
  end

  # ----------------Testing for author, price, date ----------------

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without author, price, date' do
    subject.author = nil
    subject.price = nil
    subject.date = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  # ----------------Testing for price, date ----------------

  it 'is not valid without price, date' do
    subject.price = nil
    subject.date = nil
    expect(subject).not_to be_valid
  end

  # ----------------Testing for title ----------------

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  # ----------------Testing for author ----------------

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  # ----------------Testing for price ----------------

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  # ----------------Testing for date ----------------

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).not_to be_valid
  end

end