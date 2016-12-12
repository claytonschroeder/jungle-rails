describe Hash do
  it "should return a blank instance" do
    Hash.new.expect == {}
  end
end