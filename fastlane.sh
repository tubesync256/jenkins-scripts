NOOFPROJECTS=$(find -path ./__MACOSX -prune -o -name '*.xcodeproj' -print | grep -o '\./.*/' | wc -l)

if [ $NOOFPROJECTS != 1 ]; then
  echo "Number of projects = " $NOOFPROJECTS ". Number of projects MUST BE ONE!" >> log.txt
  exit 1
fi

PROJPATH=$(find -path ./__MACOSX -prune -o -name '*.xcodeproj' -print | grep -o '\./.*/' | sed 's/\.\///g')
cp fastlane_expect.sh $PROJPATH
cd $PROJPATH

./fastlane_expect.sh