require "json"
require "./meta.cr"
require "./series.cr"


module Cravn
    
    class TimeSeriesWeeklyAdj
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Weekly Adjusted Time Series", emit_null: true)]
        property weekly_adj : Hash(String, Series)?

    end
    
end