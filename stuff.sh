IFS=$'\n' read -d '' -r -a folders <<< "$changed_folders"
for folder in "${folders[@]}"; do
  base_folder=$(echo "$folder" | awk -F"/" '{print $2}')
  tar -czvf "$base_folder.tar.gz" "$folder"
done
