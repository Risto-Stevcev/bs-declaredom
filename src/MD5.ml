type hash

external md5: (_ [@bs.as "md5"]) -> hash = "createHash"
[@@bs.module "crypto"]

external update: hash -> string -> hash = "update" [@@bs.send]
external digest_hex: hash -> (_ [@bs.as "hex"]) -> string = "digest"
[@@bs.send]

let make value = md5 |. update value |. digest_hex 
