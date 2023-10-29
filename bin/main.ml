open Eio.Std
open Ox.Oauth2 
let read_credentials =
  {
    Credentials.consumer_key = Unix.getenv "CONSUMER_KEY";
    consumer_secret = Unix.getenv "CONSUMER_SECRET";
    access_token = Unix.getenv "ACCESS_TOKEN";
    access_token_secret = Unix.getenv "ACCESS_TOKEN_SECRET";
  }

let main ~stdout =
  let credentials  = read_credentials in 
  let _ = traceln "%s\n" (Credentials.show credentials) in
  let _ = traceln "%s\n" "test" in
  Eio.Flow.copy_string "Hello, world!\n" stdout

let () =
  let _ = Dotenv.export () in
  Eio_main.run @@ fun env -> main ~stdout:(Eio.Stdenv.stdout env)
