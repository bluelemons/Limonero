require 'spec_helper'

describe Contrato do
  it { should belong_to(:lote) }
  it { should have_and_belong_to_many(:compradores) }
end
