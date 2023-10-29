module Credentials = struct
  type t = {
    consumer_key : string;
    consumer_secret : string;[@opaque]
    access_token : string; [@opaque]
    access_token_secret : string;[@opaque]
  }
  [@@deriving show { with_path = false }]
end
