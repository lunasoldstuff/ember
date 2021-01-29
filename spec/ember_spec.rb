# frozen_string_literal: true

RSpec.describe Ember do
  it 'has a version number' do
    expect(Ember::VERSION).not_to be nil
  end

  it 'ember.rb returns true for ci' do
    expect(Ember::CI).not_to be nil
  end
end
