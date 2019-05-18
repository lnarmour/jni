#include "Test.h"
#include <ctype.h>
#include <string.h>

JNIEXPORT jint JNICALL Java_Test_multiply
  (JNIEnv *env, jobject obj, jint a, jint b) {
	return a*b;
}
