#!/bin/bash
# This script divides two numbers

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

if [ $num2 -eq 0 ]
then
  echo "Division by zero is not allowed!"
else
  result=$((num1 / num2))
  echo "Result of division: $result"
fi
