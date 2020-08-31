module StringToFloat
    def self.from_json(value : JSON::PullParser) : Float64
      value.read_string.to_f
    end
end

module StringToInt
    def self.from_json(value : JSON::PullParser) : Int32
      value.read_string.to_i
    end
end