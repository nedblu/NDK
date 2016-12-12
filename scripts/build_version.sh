#!/bin/bash

git=$(sh /etc/profile; which git)
number_of_commits=$("$git" rev-list HEAD --count)
git_release_version=$("$git" describe --tags --always --abbr=0)
git_commit_hash=$("$git" rev-parse --short HEAD)

target_plist="$TARGET_BUILD_DIR/$INFOPLIST_PATH"
dsym_plist="$DWARF_DSYM_FOLDER_PATH/$DWARF_DSYM_FILE_NAME/Contents/Info.plist"

for plist in "$target_plist" "$dsym_plist"; do
    if [ -f "$plist" ]; then
        /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $number_of_commits" "$plist"
        /usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString ${git_release_version#*v}" "$plist"
        /usr/libexec/PlistBuddy -c "Set :GIT_COMMIT_HASH $git_commit_hash" "$plist"
    fi
done