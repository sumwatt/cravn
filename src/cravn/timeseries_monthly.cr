require "json"
require "./meta.cr"
require "./series.cr"


module Cravn
    
    class TimeSeriesMonthly
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Monthly Time Series", emit_null: true)]
        property monthly : Hash(String, Series)?

    end
    
end