export JAVA_HOME=$(/usr/libexec/java_home)
javac *.java -h .
gcc -g -dynamiclib -I/usr/include -I$JAVA_HOME/include -I$JAVA_HOME/include/darwin multiply.c -o libTest.dylib

