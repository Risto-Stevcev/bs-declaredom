(**
 Provides an MD5 hashing function using the nodejs 
 {{: https://nodejs.org/api/crypto.html} [crypto]} module
 *)

(** Hashes a string using the MD5 algorithm *)
val make: string -> string
