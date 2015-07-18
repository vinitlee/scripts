date > ~/Library/Logs/vinitlee/cleanup.log
echo "---- Downloads" >> ~/Library/Logs/vinitlee/cleanup.log
ls ~/Downloads/* >> ~/Library/Logs/vinitlee/cleanup.log
echo "---- Desktop" >> ~/Library/Logs/vinitlee/cleanup.log
ls ~/Desktop/* >> ~/Library/Logs/vinitlee/cleanup.log

set tempdir /tmp/cleanup_(date +%d-%m-%y)

mkdir -p $tempdir

mkdir -p $tempdir/Downloads/
mkdir -p $tempdir/Desktop/

mv ~/Downloads/* $tempdir/Downloads/
mv ~/Desktop/* $tempdir/Desktop/

trash $tempdir