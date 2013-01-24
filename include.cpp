/*
 * =====================================================================================
 *
 *       Filename:  include.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013/01/18 12時58分15秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include "include.hpp"
#include <string>

void SStudent::call() {
		printf("%s", str.c_str());
}

void SStudent::setString(std::string str) {
		this->str = str;
}
