require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Visit do

  before(:each) do
    @v = Visit.new
  end

  it "should start sane" do
    @v.should be_valid
  end

  it "should require a time" do
    @v.time = nil
    @v.should_not be_valid
  end

end
