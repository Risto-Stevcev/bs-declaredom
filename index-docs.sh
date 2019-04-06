function create_index_page {
  echo "<meta http-equiv=\"refresh\" content=\"0;URL='$1'\"/>" > $2
}

create_index_page "bs-declaredom/BsDeclaredom" "docs/index.html"
create_index_page "BsDeclaredom" "docs/bs-declaredom/index.html"
