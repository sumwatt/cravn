require "./spec_helper"
require "../src/cravn.cr"
require "json"

describe Cravn do
  # TODO: Write tests

  it "Parses a Daily Time Series" do
    #false.should eq(true)
    json = File.read("./spec/time_series_daily_compact.json") 

    record = Cravn::TimeSeries.from_json(json)
    record.meta.symbol.should eq "SSO"
    #result =  record.daily.not_nil!.["2020-08-28"]
    #indv_data.close.should eq 80.38
    #record.daily.first_key?.should eq "2020-08-28"
    #result.close.should eq 80.38 if result
    #pp record
    record.daily.not_nil!.first_key?.should eq "2020-08-28"
    record.daily.not_nil!.["2020-08-28"].close.should eq 80.38
    
  end
end
