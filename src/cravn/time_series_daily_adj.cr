require "json"
require "./converters.cr"

module Cravn
    
    class TimeSeriesDaily
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Time Series (Daily)")]
        property daily : Hash(String, SeriesAdj)

    end
    
end