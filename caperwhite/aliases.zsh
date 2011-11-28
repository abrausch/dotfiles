alias mwe="metatool -w -deleteext"
alias mwec="git status --porcelain | cut -c 2- | grep -E \"^[^D]\" | cut -c 3- | grep -E '*\.h$' | cut -d. -f1 | xargs -I {} metatool -w -deleteext {}.\[hm\]"
alias xbuild_clean='rm -rf build; ../Xcode/bin/build-xcode-project.rb --sdk iphoneos5.0 --sdk iphonesimulator5.0 --sdk macosx10.7'
alias xbuild='../Xcode/bin/build-xcode-project.rb --sdk iphoneos5.0 --sdk iphonesimulator5.0 --sdk macosx10.7'
alias xbuildall='../Xcode/Scripts/with-projects.rb -- rm -rf build; ../Xcode/Scripts/with-projects.rb -- ../Xcode/bin/build-xcode-project.rb --sdk iphoneos5.0 --sdk iphonesimulator5.0 --sdk macosx10.7'
alias with-project='../Xcode/Scripts/with-projects.rb'
