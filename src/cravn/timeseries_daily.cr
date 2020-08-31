require "json"
require "./meta.cr"
require "./series.cr"


module Cravn
    
    class TimeSeriesDaily
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Time Series (Daily)")]
        property daily : Hash(String, Series)

    end
    
end