require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :genre }
  it { should validate_presence_of :key }
  it { should validate_presence_of :bpm }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }

end
