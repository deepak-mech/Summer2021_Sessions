#!/usr/bin/python3

## Import libraries
import subprocess
import cgi

## Header
print('Access-Control-Allow-Origin: * ')
print('content-type: text/html')
print()

## Body
print('my content from python3')

output = subprocess.getoutput("date")
print(output)
