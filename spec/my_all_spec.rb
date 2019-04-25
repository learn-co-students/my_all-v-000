require_relative 'spec_helper'
require_relative '../lib/my_all.rb'

describe "#my_all?" do
  let(:collection) { [1, 2, 3] }

  it "does not call on all?" do
    expect(collection).to_not receive(:all?)
  end

  it "can handle an empty collection" do
    counter=0
    my_all?([]) do |x|
      counter+=1
    end
    expect(counter).to eq(0)
  end


end
