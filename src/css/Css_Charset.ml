(**
 {{: https://www.w3.org/International/questions/qa-css-charset#atcharset } Using \@charset }

 {{: https://encoding.spec.whatwg.org/#names-and-labels } List of encodings }
 *)

(* TODO: add all encodings *)
type t =
  [
  | `big5 | `euc_kr | `iso_8859_1 | `iso_8859_2 | `iso_8859_3 | `iso_8859_4
  | `iso_8859_5 | `iso_8859_6 | `iso_8859_7 | `iso_8859_8 | `koi8_r
  | `shift_jis | `x_euc | `utf_8 | `utf_16 | `windows_1250 | `windows_1251
  | `windows_1252 | `windows_1253 | `windows_1254 | `windows_1255
  | `windows_1256 | `windows_1257 | `windows_1258 | `windows_874
  ]
  [@@bs.deriving jsConverter]

let show (t: t): string = t |> tToJs |> Util.underscore_to_dash
