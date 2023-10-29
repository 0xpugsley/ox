open Eio.Std
let main ~stdout =
  let consumer_key = Unix.getenv "CONSUMER_KEY" in
  let consumer_secret = Unix.getenv "CONSUMER_SECRET" in
  let access_token = Unix.getenv "ACCESS_TOKEN" in
  let access_token_secret = Unix.getenv "ACCESS_TOKEN_SECRET" in
  let key = Unix.getenv "CONSUMER_KEY" in
  let _ = traceln "%s\n" key in
  Eio.Flow.copy_string "Hello, world!\n" stdout

let () =
  let _ = Dotenv.export () in
  Eio_main.run @@ fun env ->
  main ~stdout:(Eio.Stdenv.stdout env)