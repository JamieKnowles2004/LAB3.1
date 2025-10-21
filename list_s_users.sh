#!/bin/bash
# Name: Jamie Knowles
# Student Number: C00307559
# Purpose: Lab 3.1 Exercise 4
# Task: List usernames from /etc/passwd that begin with 's' and output them sorted and unique

grep '^s' /etc/passwd | cut -d: -f1 | sort | uniq
