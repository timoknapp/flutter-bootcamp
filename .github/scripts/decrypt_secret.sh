#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_PASSPHRASE" \
--output /home/runner/work/flutter-bootcamp/flutter-bootcamp/chapter_11/flash-chat-flutter/android/app/google-services.json /home/runner/work/flutter-bootcamp/flutter-bootcamp/chapter_11/flash-chat-flutter/android/app/google-services.json.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_PASSPHRASE" \
--output /home/runner/work/flutter-bootcamp/flutter-bootcamp/chapter_11/flash-chat-flutter/ios/Runner/GoogleService-Info.plist /home/runner/work/flutter-bootcamp/flutter-bootcamp/chapter_11/flash-chat-flutter/ios/Runner/GoogleService-Info.plist.gpg