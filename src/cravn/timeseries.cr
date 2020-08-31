require "json"
require "./meta.cr"
require "./series.cr"


module Cravn
    
    class TimeSeries
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : Meta

        @[JSON::Field(key: "Time Series (Daily)", emit_null: true)]
        property daily : Hash(String, Series)?

        @[JSON::Field(key: "Weekly Time Series", emit_null: true)]
        property weekly : Hash(String, Series)?

        @[JSON::Field(key: "Weekly Adjusted Time Series", emit_null: true)]
        property weekly_adj : Hash(String, Series)?

        @[JSON::Field(key: "Monthly Time Series", emit_null: true)]
        property monthly : Hash(String, Series)?

        @[JSON::Field(key: "Monthly Adjusted Time Series", emit_null: true)]
        property monthly_adj : Hash(String, Series)?

    end
    
end