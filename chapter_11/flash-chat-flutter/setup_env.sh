echo "ENV:"
echo $APP_DIR

# echo $GOOGLE_API_KEY_IOS
# echo $GOOGLE_APP_ID_IOS
# echo $GOOGLE_CLIENT_ID_IOS
# echo $GOOGLE_CLIENT_ID_REV_IOS
# echo $GOOGLE_API_KEY_ANDROID
# echo $GOOGLE_APP_ID_ANDROID
# echo $GOOGLE_CLIENT_ID_ANDROID
# echo $GOOGLE_DATABASE_URL

echo "Set iOS Env:"
sed -i -e "s/GOOGLE_API_KEY_IOS/$GOOGLE_API_KEY_IOS/g" $APP_DIR/ios/Runner/GoogleService-Info.plist && sed -i -e "s/GOOGLE_APP_ID_IOS/$GOOGLE_APP_ID_IOS/g" $APP_DIR/ios/Runner/GoogleService-Info.plist && sed -i -e "s/GOOGLE_CLIENT_ID_IOS/$GOOGLE_CLIENT_ID_IOS/g" $APP_DIR/ios/Runner/GoogleService-Info.plist && sed -i -e "s/GOOGLE_CLIENT_ID_REV_IOS/$GOOGLE_CLIENT_ID_REV_IOS/g" $APP_DIR/ios/Runner/GoogleService-Info.plist && sed -i -e "s/GOOGLE_DATABASE_URL/$GOOGLE_DATABASE_URL/g" $APP_DIR/ios/Runner/GoogleService-Info.plist

echo "Set Android Env:"
sed -i -e "s/GOOGLE_API_KEY_ANDROID/$GOOGLE_API_KEY_ANDROID/g" $APP_DIR/android/app/google-services.json && sed -i -e "s/GOOGLE_APP_ID_ANDROID/$GOOGLE_APP_ID_ANDROID/g" $APP_DIR/android/app/google-services.json && sed -i -e "s/GOOGLE_CLIENT_ID_ANDROID/$GOOGLE_CLIENT_ID_ANDROID/g" $APP_DIR/android/app/google-services.json && sed -i -e "s/GOOGLE_DATABASE_URL/$GOOGLE_DATABASE_URL/g" $APP_DIR/android/app/google-services.json