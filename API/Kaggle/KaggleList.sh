#!/bin/bash
read -p "Search term (leave blank to see all): " term

if [ -z "$term" ]
then
  > ~/Kaggle/current_.csv
  kaggle competitions list --sort-by latestDeadline -v > ~/Kaggle/current_.csv
  xdg-open  ~/Kaggle/current_.csv
else
  > ~/Kaggle/current_${term}.csv
  kaggle competitions list -s $term --sort-by latestDeadline -v > ~/Kaggle/current_${term}.csv
  xdg-open  ~/Kaggle/current_${term}.csv
fi

echo "Would you like to conintue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) source ~/repos/Spicy_nuts/API/Kaggle/KaggleAPI.sh;;
        No ) exit;;
    esac
done
