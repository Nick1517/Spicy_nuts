#!/bin/bash
read -p "Competition: " project

#Open competition rules
xdg-open https://www.kaggle.com/c/$project/rules
echo "Do you agree to the terms and conditions?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

#If yes proceed
mkdir ~/Kaggle/$project
kaggle competitions download $project -p ~/Kaggle/$project
cd ~/Kaggle/$project
xdg-open ~/Kaggle/$project

echo "Would you like to conintue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) source ~/repos/Spicy_nuts/API/Kaggle/KaggleAPI.sh;;
        No ) exit;;
    esac
done
