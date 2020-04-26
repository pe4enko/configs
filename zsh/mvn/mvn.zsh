# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
#alias mvn="mvn-color"
#compctl -K listMavenCompletions mvn-color

alias -g skip="-Dmaven.test.skip=true -DskipTests"
alias mi="mvn install -Dmaven.test.skip=true -DskipTests"
alias mci="mvn clean install -Dmaven.test.skip=true -DskipTests"
alias mit="mvn install"
alias mitc="mvn install -DskipTests"
alias mmi="mi -T 1.5C"
alias mmit="mit -T 1.5C"
alias mmitc="mitc -T 1.5C $@"

alias mp="mvn package -Dmaven.test.skip=true -DskipTests"
alias mcp="mvn clean package -Dmaven.test.skip=true -DskipTests"
alias mpt="mvn package"
alias mmp="mp -T 1.5C"
alias mmpt="mpt -T 1.5C"

alias s5="cd ~/work/stands/5.4"
alias s7="cd ~/work/stands/7.0"
alias s7w="cd ~/work/stands/7.0-web"
alias s8="cd ~/work/stands/8.0_DLC"

alias k="kill -9 %%"


#export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.4
#export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx2g -XX:MaxPermSize=256m"
#export PATH=$M2:$PATH

#export IDEA_JDK=/usr/lib/jvm/idea-jdk