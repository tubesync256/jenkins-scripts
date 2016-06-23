NOOFPROJECTS=$(find -path ./__MACOSX -prune -o -name '*.xcodeproj' -print | grep -o '\./.*/' | wc -l)

if [ $NOOFPROJECTS != 1 ]; then
  echo "Number of projects = " $NOOFPROJECTS ". Number of projects MUST BE ONE!" >> log.txt
  exit 1
fi

cd $(find -path ./__MACOSX -prune -o -name '*.xcodeproj' -print | grep -o '\./.*/' | sed 's/\.\///g' | sed 's/\/$//g')
fastlane init