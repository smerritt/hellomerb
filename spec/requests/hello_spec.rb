require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/hello" do
  before(:each) do
    @response = request("/hello")
  end

  it "should say hello" do
    @response.body.to_s.should match(/hello/i)
  end
  
end
