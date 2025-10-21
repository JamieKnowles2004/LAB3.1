#!/bin/bash
# Name: Jamie Knowles 
# Student Number: C00307559 
# Purpose: Lab 3.1 Exercise 5 
# Task: Demonstrate curl and wget commands. 

echo "Fetching public IP..." 
curl -s https://api.ipify.org?format=json 
echo 

echo "Getting headers from Google, GitHub, and SETU..." 
curl -I https://www.google.com 
curl -I https://www.github.com 
curl -I https://www.setu.ie 
echo 

echo "Creating downloads folder and saving a file..." 
mkdir -p downloads 
wget -P downloads/ https://example.com 
echo "Download complete! File saved to ./downloads/"
