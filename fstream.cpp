/*
 * =====================================================================================
 *
 *       Filename:  fstream.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013/01/18 14時01分42秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include "include.hpp"

int main(int argc, char* argv[]) {
		SStudent ss;
		ss.setString(argv[1]);
		ss.call();

		SStudent ssy;
		ssy.setString(argv[2]);
		ssy.call();
}
