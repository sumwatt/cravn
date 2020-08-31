require "json"

module Cravn
    class Meta
        include JSON::Serializable

        @[JSON::Field(key: "1. Information")]
        property info : String

        @[JSON::Field(key: "2. Symbol")]
        property symbol : String

        @[JSON::Field(key: "3. Last Refreshed")]
        property last_refresh : String

        @[JSON::Field(key: "4. Output Size")]
        property output_size : String

        @[JSON::Field(key: "5. Time Zone")]
        property time_zone : String

    end
    
end