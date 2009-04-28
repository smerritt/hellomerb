require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/hello" do

  it "should say hello" do
    response = request("/hello")
    response.body.to_s.should match(/hello/i)
  end
  
  it "should count the visits" do
    20.times { Visit.create }
    response = request("/hello")
    response.body.to_s.should match(/#{Visit.count}/i)
  end

  it "should add a visit before displaying the page" do
    Visit.all.destroy!
    lambda {
      response = request("/hello")
      response.body.to_s.should match(/1 people/)
    }.should change(Visit, :count).by(1)
  end

end
