require 'rails_helper'

RSpec.describe Brewery do
  it 'exists and has attributes' do
    attributes = {
      id: 15519,
      name: 'Vine Street Pub & Brewery',
      brewery_type: 'brewpub',
    }

    brewery = Brewery.new(attributes)

    expect(brewery).to be_a(Brewery)
    expect(brewery.id).to eq(attributes[:id])
    expect(brewery.name).to eq(attributes[:name])
    expect(brewery.brewery_type).to eq(attributes[:brewery_type])
  end
end
