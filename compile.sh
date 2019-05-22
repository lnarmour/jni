#export JAVA_HOME=$(/usr/libexec/java_home)

javac *.java -h .

# MacOS
#gcc -g -dynamiclib -I/usr/include -I$JAVA_HOME/include -I$JAVA_HOME/include/darwin multiply.c -o libTest.dylib

# linux
gcc -shared -c -g -I$JAVA_HOME/include \
    -I$JAVA_HOME/include/linux \
    -fPIC -MMD -MP -MF "multiply.o.d" -o multiply.o multiply.c
gcc -shared -o multiply.so multiply.o -fPIC

