# This install Function Only Needs to Be Run Once. After you run it, you can delete it!

# Use my functions as templates! Soon, you'll fall in love with iTerm just like I have (:
function install (){
  echo "This only has to be run once! Brew will be installed, and so will cowsay to ensure that everything works properly. If you one to continue, enter '1' :"
  read -p 'Would you like to continue?: ' answer
  if (($answer == 1))
  then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "'brew' Successfully Installed! - exiting"
  else
    echo "Not installing 'brew'!"
  fi
  echo "Now installing cowsay, if you would like to continue, type '1'"
  read -p "Would you like to continue?: " answer2
  if (($answer2 == 1))
  then
    brew install cowsay
    echo "'cowsay' Successfully Installed"
  else
    echo "Not installing 'cowsay'!"
  fi
}

# bored in class? play bloxorz.
function bored(){
  open -a "Google Chrome" 'https://www.miniclip.com/games/bloxorz/en/'
}

# converts and saves youtube video to mp3
function ytmp3() {
  youtube-dl --no-check-certificate --restrict-filenames --extract-audio --audio-format mp3 -o './Downloads/Youtube\ Downloads/%(title)s.%(ext)s' $1
}

#needa finesse a song? ytmp4
function ytmp4() {
  youtube-dl -f 22 --no-check-certificate $1
}

#edit a website by choosing the file in your directory.
function webedit() {
  open -a 'Atom' $1
  open -a 'Google Chrome' $1
}

#if you're ... you know... doing anything suspicious
function dub {
  cowsay "nothin goin on here officer..... DRAAAAAAAKEEEE???!!?!?"
  osascript -e "set Volume 0" #set's system volume to 0
  osascript -e 'quit app "Messages"' #quitting out of messages
  osascript -e 'quit app "All-in-One Messenger"' #personal messenger that i use... quitting out of it.
  osascript -e 'quit app "Google Chrome"' #quitting out of Google Chrome. All you have to do is look up the Application name and Voila, quit out of it.
}
#I dislike this class. I just created a function to open all of my files... here is an example of what you can do!
#Change the directories to your own personal ones!
function oop(){
  echo "Have a great class!"
  echo "Closing Messages and Muting Computer..."
  echo "Opening GitHub, XCode, and Travis"
  cd
  open https://travis-ci.com/
  open https://github.com/korivernon/StudentOOP
  cd ~/Google\ Drive/Computer\ Science/Object\ Oriented/StudentOOP/
  open -a "Google Chrome" "https://newclasses.nyu.edu/portal"
  open -a 'Xcode'
  osascript -e "set Volume 0"
  osascript -e 'quit app "Messages"'
}

#needa fix your website bc you realized you f***ed up again
function mypage() {
  cd
  open -a "Atom"
  osascript -e 'tell application "System Events" to keystroke "n" using {command down}' #opens a new window in atom once you go into atom.
  open -a 'Atom' './Desktop/laughing-pancake/'
  open -a "Google Chrome"
  osascript -e 'tell application "System Events" to keystroke "n" using {command down}' #opens a new window in google chrome once you go into google chrome.
  open -a 'Google Chrome' './Desktop/laughing-pancake/index.html'
  open ./Desktop/laughing-pancake/
  echo "Opening Website Editing Environment" #if everything is done successfully, this will open (:
}

#needa hit dem messages?!?!
function m() {
  open -a 'Messages'
  echo "Opening Messages"
}

#shortcuts to look cool
function gc() {
  open -a 'Google Chrome'
  echo "Opening Google Chrome"
}
function atom() {
  open -a 'Atom'
  echo "Opening Atom"
}
#I'm logged into multiple accounts, this cd's into my school account
function drive() {
  open 'https://drive.google.com/drive/u/1/my-drive'
  echo "Opening Google Drive"
}
function editcom() {
  open -a 'Atom' ~/.myCommands.sh
  echo "Don't forget to save your work!"
}
function classes() {
  cd
  cd ~/Downloads/
  python3 NewClasses.py
  echo "New Classes is Open!"
}
# This command saves lives. This saves your commands to bash so that you don't have to do it manually.
function comsave() {
  cd ~
  cp -fr ~/.myCommands.sh ~/Bash\ Github
  echo "I am saved"
  echo "Saving your latest commands..."
  source ~/.myCommands.sh
  echo "Saved!"
}

function groupme {
  open -a "Google Chrome" 'https://web.groupme.com/chats'
}

function phi {
  open -a 'Google Chrome' 'https://docs.google.com/document/d/1YvPqw56hi-N361xgvdfkY9LrGQ5a7fUYakl2yxreVbU/edit'
}

function compsci {
  cd
  open ./Google\ Drive/Computer\ Science/
}

function cal {
  open -a 'Google Chrome' 'https://calendar.google.com/calendar/b/1/r/week'
}

function yt {
  open -a 'Google Chrome' 'https://www.youtube.com/'
}

function github {
  open -a 'Google Chrome' 'https://github.com/korivernon?tab=repositories'
}

function albert {
  open -a 'Google Chrome' 'http://albert.nyu.edu/albert_index.html'
}

function incog {
  open -a 'IncogNegro'
}

function robinhood {
  open -a 'Google Chrome' 'https://robinhood.com/'
}

function xcode {
  open -a 'Xcode'
}
function nhome {
  open -a "Google Chrome" 'https://globalhome.nyu.edu/group/nyu-home/'
}
function mail {
  open -a 'Spark'
}
function sl {
  open -a 'Slack'
}
function oopcom {
  cd
  cd ~/Google\ Drive/Computer\ Science/Object\ Oriented/StudentOOP/
  git add tests/
  git add mycode/
  git commit -a -m "Latest"
  git push
  echo "Your Status Is..."
  git status
  echo "You have successfully pushed!"
}

function killport {
  sudo lsof -i:5000
}
function ssql {
  sudo mysql -uroot -p
}
function project {
  cd
  cd ~/Google\ Drive/Computer\ Science/Projects/
}

function grades {
  open -a "Google Chrome" https://docs.google.com/spreadsheets/d/1rMfmburzyt2LXoRmN7HLU99bqsW7vbaDGwZoFmrPaK4/edit?usp=sharing
}

function ccult {
  open -a https://drive.google.com/drive/u/1/folders/1x4v_Gt7ufoN0i3GzhQHj6hiAL-Nf-Ro4
}

function expos {
  echo "Have a great class!"
  echo "Closing Messages and Muting Computer..."
  echo "Opening Classes, Google Drive, and Google Classrooms"
  open -a "Google Chrome" "https://newclasses.nyu.edu/portal"
  open -a "Google Chrome" 'https://classroom.google.com/u/1/c/NDE4MjYwMDM3MDda'
  open -a "Google Chrome" 'https://drive.google.com/drive/u/1/folders/1FLueNOzY5lp7kQ82m_WWuwkZq99AE-0d'
  osascript -e "set Volume 0"
  osascript -e 'quit app "Messages"'

}

function ycslides {
  open -a "Google Chrome" 'https://drive.google.com/drive/u/1/folders/1ebEVdtlUyP0KelNz2LpUkt2aK_W7ms8S'
}

function class {
  echo "Have a great class!"
  echo "Closing Messages and Muting Computer..."
  open -a "Google Chrome" "https://newclasses.nyu.edu/portal"
  osascript -e "set Volume 0"
  osascript -e 'quit app "Messages"'
}

function rlc {
  open -a "Google Chrome"
  osascript -e 'tell application "System Events" to keystroke "n" using {command down}'
  open -a "Google Chrome" 'http://www.refugeelawreader.org/en/i-introduction-to-international-refugee-law-background-and-context.html'
  open -a "Google Chrome" 'https://www.refworld.org/'
  open -a "Microsoft Word" "./Desktop/UPDATED CORE COURSE SYLLABUS 2020 REFUGEES LAW AND CRISES R BYRNE.docx"
}
#opens my TA grading environment
function grading {
  open -a 'idle'
  delay 0.5
  osascript -e 'tell application "System Events" to keystroke "j" using {control down, option down}'
  delay 0.5
  open "Google Chrome"
  osascript -e 'tell application "System Events" to keystroke "n" using {command down}'
  delay 0.5
  osascript -e 'tell application "System Events" to keystroke "u" using {control down, option down}'
  delay 0.5
  open -a 'Google Chrome' 'https://docs.google.com/spreadsheets/d/1syAEF32aZAUzYYRxfq1ykv_G0LevN2oclts4wbimDhQ/edit#gid=710216035'
  open -a 'Google Chrome' 'https://www.gradescope.com/courses/61973'
  delay 0.1
  osascript -e 'tell application "System Events" to keystroke "r" using {control down, option down}'
}

function mvc {
  open -a 'Google Chrome' "https://pi.pearsoned.com/v1/piapi/piui/signin?client_id=dN4bOBG0sGO9c9HADrifwQeqma5vjREy&okurl=https:%2F%2Fportal.mypearson.com%2Fcourse-home&siteid=8313"
  open -a 'Adobe Acrobat' "file:///Users/trapbookpro/Desktop/MATH-UH%201020-001%20MVC%20with%20Applications%20to%20Sci%20_%20Eng%20-%20Spring%202020%20-Syllabus%20(2).pdf"
}

#runs my c++ code after I manually make it. it's just easier (:
function cpr () {
  g++ $1 -o && ./a.out -w
}

function pands {
  open -a 'Google Chrome''https://www.webassign.net/wa-auth/login'
}

function algo {
  open -a "Google Chrome" "https://bookshelf.vitalsource.com/#/books/9781292037042/cfi/4!/4/2@100:0.00"
}

function prob {
  open -a "Google Chrome" "https://www.webassign.net/wa-auth/login?sessionExpired=true"
}

#creates a new folder for every class!
function dsc {
  read -p 'Lecture Number: ' number
  open -a "Visual Studio Code" "./Desktop/datastructurescpp"
  open ~/Desktop/datastructurescpp
  cd ~/Desktop/datastructurescpp
  mkdir "lecture $number"
  cd "lecture $number"
  {
    echo "//lecture $number"
    echo "#include<iostream>"
    echo "using namespace std;"
  } > "lecture_$number.cpp"
  open -a "Visual Studio Code" "./lecture_$number.cpp"
}

function dsl {
  read -p 'Lab Number: ' number
  open -a "Visual Studio Code" "./Desktop/DataStructures"
  open ~/Desktop/DataStructures
  cd ~/Desktop/DataStructures
  mkdir "lab $number"
  cd "lab $number"
  {
    echo "//lab $number"
    echo "#include<iostream>"
    echo "using namespace std;"
  } > "lab$number.cpp"
  open -a "Visual Studio Code" "./lab$number.cpp"
}

function dub {
  cowsay "nothin goin on here officer..... DRAAAAAAAKEEEE???!!?!?"
  osascript -e "set Volume 0"
  osascript -e 'quit app "Messages"'
  osascript -e 'quit app "All-in-One Messenger"'
  osascript -e 'quit app "Google Chrome"'
}

function handshake {
  open -a "Google Chrome" "https://nyu.joinhandshake.com/login?ref=app-domain"
}

#quick cd function to quickly change directories if i'm bored. i have a lot of folders. go figure.
  cowsay "What folder would you like to Quick-cd into?"
  cd ~
  {
    echo "1: DataStructures"
    echo "2: i_hate_algorithms"
    echo "3: Computer Science"
  }
  read -p 'Folder: ' folder
  if (($folder == 1))
  then
    echo "Successfully cd'd into 'DataStructures'"
    cd ~/Desktop/DataStructures
  fi
  if (($folder == 2))
  then
    echo "Successfully cd'd into 'i_hate_algorithms;"
    cd ~/Google\ Drive/Computer\ Science/Projects/i_hate_algorithms/i_hate_algorithms
  fi
  if (($folder == 3))
  then
    echo "Successfully cd'd into 'Computer Science'"
    cd ~/Google\ Drive/Computer\ Science
  fi
}
