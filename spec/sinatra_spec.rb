require_realtive 'sinatra'

describe "Truth" do
  it "must be truthy" do
    expect(true).to be_truthy
  end

  it "must make one equal one" do
    expect(1).to eq(1)
  end
end
