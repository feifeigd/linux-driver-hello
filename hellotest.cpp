
#include <fcntl.h>
#include <unistd.h>
//#include <cstdio>
#include <iostream>

using namespace std;

int main(void){
	int fd = open("/dev/hellodev", O_RDWR);
	if(fd < 0)
		cout << "can't open!\n" << endl;
	int val = 1;
	write(fd, &val, 4);
	return 0;
}

