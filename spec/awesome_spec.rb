require "spec_helper"

describe NewGem::Awesome do
  it "is awesome" do
    NewGem::Awesome.new.describe.should be_awesome
  end
end