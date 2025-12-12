set -euxo pipefail

docker compose up --detach

echo "Waiting in case Docker container needs it..."
sleep 2

rsync -avP --exclude='*.mp4' _site/* sgururaj@linux.gp.cs.cmu.edu:/afs/cs.cmu.edu/user/sgururaj/www
