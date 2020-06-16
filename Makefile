SOURCE="https://download.kde.org/unstable/kdenlive/16.12/linux/Kdenlive-16.12-rc-x86_64.AppImage"
OUTPUT="KDEnlive.AppImage"

all:
	echo "Building: $(OUTPUT)"
	rm -f ./$(OUTPUT)
	#wget --output-document=$(OUTPUT) --continue $(SOURCE)
	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)
	chmod +x $(OUTPUT)

