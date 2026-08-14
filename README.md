# FortranCalc

A simple calculator written in Fortran. It prompts the user for two integers and prints their sum, difference, product, and quotient (with division by zero handled).

## Features

- Interactive command-line interface
- Basic arithmetic: addition, subtraction, multiplication, division
- Division by zero (or numbers <= 0) is detected and reported instead of crashing
- Repeats until the user chooses to exit

## Requirements

- A Fortran compiler (e.g., `gfortran`)

## Building

```bash
gfortran calc.f90 -o calc
```

## Running

```bash
./calc
```

Example session:

```
 Enter 2 numbers
7 2
 Sum of 7 And 2 is 9
 Sub of 7 And 2 is 5
 Mult of 7 And 2 is 14
 Div of 7 And 2 is 3
 Want to continue? [y / n]
n
```

## Usage

- Enter two integers separated by a space when prompted.
- Answer `y` to continue or `n` to exit when asked.