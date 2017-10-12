require './lib/report'

describe Report do
  it 'it is created with a potential URL' do
    report = Report.new('http://www.bbc.co.uk/iplayer')
    expect(report.url).to eq 'http://www.bbc.co.uk/iplayer'
  end

  it 'cam check the validity of a given url' do
    report = Report.new('http://www.bbc.co.uk/iplayer')
    expect(report.valid_url?).to eq true
  end

  it 'will fail if it is not a valid url' do
    report = Report.new('bad://address')
    expect(report.valid_url?).to eq false
  end
end