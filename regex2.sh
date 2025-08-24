read -rp "enter email id: " email
if [[ $email =~ ^[A-Za-z0-9.%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]; then
  echo "its a valid email id"
else
  echo "its not a valid email id"
fi
