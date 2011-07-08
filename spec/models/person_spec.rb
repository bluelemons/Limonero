require 'spec_helper'

describe Person do
  it { should belong_to :nacionalidad }
  it { should belong_to :civil }
  it { should belong_to :tdoc }
  it { should validate_presence_of :apellido }
  it { should validate_presence_of :documento }


  pending "add some examples to (or delete) #{__FILE__}"
end

