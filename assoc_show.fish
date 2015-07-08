function assoc_show --description "Show an associative array in user-friendly format."
  if [ (count $argv) -eq 1 ]
    echo $argv[1] | base64 -d
  else
    base64 -d
  end
  echo ""
end