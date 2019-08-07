#!/bin/bash

echo "What would you like to do?"
select mode in "Search" "Download" "Cancel"; do
    case $mode in
        Search ) source ~/repos/Spicy_nuts/API/Kaggle/KaggleList.sh; break;;
        Download ) source ~/repos/Spicy_nuts/API/Kaggle/KaggleDL.sh; break;;
        Cancel ) exit;;
    esac
done
