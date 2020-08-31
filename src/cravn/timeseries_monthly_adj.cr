require "json"
require "./meta.cr"
require "./series.cr"


module Cravn
    
    class TimeSeriesMonthlyAdj
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Monthly Adjusted Time Series", emit_null: true)]
        property monthly_adj : Hash(String, Series)?

    end
    
end

