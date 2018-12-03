describe 'Testing the weather JSON' do

  before(:all) do
    @weather_info = ParseWeather.new('weather_data.json')
  end

  it 'should be a hash' do
    expect(@weather_info.json_file).to be_kind_of(Hash)
  end

  it 'should have a co-ord type of hash' do
    expect(@weather_info.find_section("coord")).to be_kind_of(Hash)
  end

  it 'should have a co-ord length of 2' do
    expect(@weather_info.find_hash_length("coord")).to eq 2
  end

  it 'should have co-ord keys of type string' do
    expect(@weather_info.find_key_type("coord",String)).to eq String
  end

  it 'should have a weather type of array' do
    expect(@weather_info.json_file["weather"]).to be_kind_of(Array)
  end

  it 'should have a base type of string' do
    expect(@weather_info.json_file["base"]).to be_kind_of(String)
  end

  it 'should have a main type of hash' do
    expect(@weather_info.json_file["main"]).to be_kind_of(Hash)
  end

  it 'should have a visibility type of integer' do
    expect(@weather_info.json_file["visibility"]).to be_kind_of(Integer)
  end

  it 'should have a wind type of hash' do
    expect(@weather_info.json_file["wind"]).to be_kind_of(Hash)
  end

  it 'should have a clouds type of hash' do
    expect(@weather_info.json_file["clouds"]).to be_kind_of(Hash)
  end

  it 'should have a dt type of integer' do
    expect(@weather_info.json_file["dt"]).to be_kind_of(Integer)
  end

  it 'should have a sys type of hash' do
    expect(@weather_info.json_file["sys"]).to be_kind_of(Hash)
  end

  it 'should have a id type of integer' do
    expect(@weather_info.json_file["id"]).to be_kind_of(Integer)
  end

  it 'should have a name type of string' do
    expect(@weather_info.json_file["name"]).to be_kind_of(String)
  end

  it 'should have a cod type of integer' do
    expect(@weather_info.json_file["cod"]).to be_kind_of(Integer)
  end

  it 'should have 4 elements in the weather array' do
    expect(@weather_info.find_array_length("weather")).to eq 4
  end

  it 'should have 5 elements in the main hash' do
    expect(@weather_info.find_hash_length("main")).to eq 5
  end

  it 'should have 2 elements in the wind hash' do
    expect(@weather_info.find_hash_length("wind")).to eq 2
  end

  it 'should have 1 element in the clouds hash' do
    expect(@weather_info.find_hash_length("clouds")).to eq 1
  end

  it 'should have 6 elements in the sys hash' do
    expect(@weather_info.find_hash_length("sys")).to eq 6
  end

  it 'should have all keys in main to be strings' do
    expect(@weather_info.find_key_type("main",String)).to eq String
  end

  it 'should have all keys in wind to be strings' do
    expect(@weather_info.find_key_type("wind",String)).to eq String
  end

  it 'should have all keys in clouds to be strings' do
    expect(@weather_info.find_key_type("clouds",String)).to eq String
  end

  it 'should have all keys in sys to be strings' do
    expect(@weather_info.find_key_type("sys",String)).to eq String
  end

  it "should have the keys in the weather array being strings" do
    expect(@weather_info.find_array_key_type("weather",String)).to eq String
  end

  it "should show the temperatures as a float" do
    expect(@weather_info.json_file["main"]["temp_max"].class).to be_kind_of(Float)
  end
end
