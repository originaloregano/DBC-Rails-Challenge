require 'rails_helper'

describe Concert do
  let(:concert) { Concert.create(band: "Rick Astley", venue: "United Center", date: "August 5th, 2017", start_time: "08:00pm")}

  context 'Concert is not valid without band, venue, date, start time' do

    it 'is not valid without a band' do
      concer.band = nil
      expect(concert).to_not be_valid
    end

    it 'is not valid without a venue' do
      concer.venue = nil
      expect(concert).to_not be_valid
    end

    it 'is not valid without a date' do
      concer.date = nil
      expect(concert).to_not be_valid
    end
    
    it 'is not valid without a start time' do
      concer.start_time = nil
      expect(concert).to_not be_valid
    end
 
end
