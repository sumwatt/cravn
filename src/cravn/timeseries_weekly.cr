require "json"
require "./meta.cr"
require "./series.cr"


module Cravn
    
    class TimeSeriesWeekly
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Weekly Time Series", emit_null: true)]
        property weekly : Hash(String, Series)?
    end
end