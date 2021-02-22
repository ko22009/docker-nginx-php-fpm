FILE=~/.bashrc
LINE='export UID_DOCKER=${UID}'
grep -qF "$LINE" "$FILE"  || echo "$LINE" | sudo tee --append "$FILE"
LINE='export GID_DOCKER=${GID}'
grep -qF "$LINE" "$FILE"  || echo "$LINE" | sudo tee --append "$FILE"
history -a && exec bash -l
