require 'rails_helper'

describe Course do
  it { should validate_presence_of :name }
  it { should belong_to :track }
end
