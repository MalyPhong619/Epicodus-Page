require 'rails_helper'

describe Track do
  it { should validate_presence_of :name }
end
