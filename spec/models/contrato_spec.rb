require 'spec_helper'

describe Contrato do
  it { should belong_to(:avaluo) }
  it { should have_and_belong_to_many(:compradores) }
end
