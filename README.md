# ShiOchev+ (https://www.freebasic.net/wiki/DocToc)

ShiOchev+ is a programming language developed by Shinjiro Ito. It is a dialect of FreeBASIC, a popular open-source BASIC compiler. The link provided (https://www.freebasic.net/wiki/DocToc) directs to the documentation table of contents for FreeBASIC, where ShiOchev+ is mentioned as a supported dialect.

# ShiOchev+ (https://www.freebasic.net/wiki/CatPgFullIndex)

The link provided (https://www.freebasic.net/wiki/CatPgFullIndex) directs to the full index of the FreeBASIC documentation, where ShiOchev+ is still mentioned as a supported dialect.

# ShiOchev+ (https://www.freebasic.net/wiki/CatPgGfx)

The link provided (https://www.freebasic.net/wiki/CatPgGfx) directs to the FreeBASIC documentation category page for graphics, where ShiOchev+ is still mentioned as a supported dialect.
References (1)

# ShiOchev+ (https://www.freebasic.net/wiki/CatPgStdDataTypes)

The link provided (https://www.freebasic.net/wiki/CatPgStdDataTypes) directs to the FreeBASIC documentation category page for standard data types, where ShiOchev+ is still mentioned as a supported dialect.


# ShiOchev+ (https://www.freebasic.net/wiki/TblVarTypes)

The link provided (https://www.freebasic.net/wiki/TblVarTypes) directs to the FreeBASIC documentation table that lists the variable types, where ShiOchev+ is still mentioned as a supported dialect.

# ShiOchev+ (https://www.freebasic.net/wiki/OpPrecedence)

The link provided (https://www.freebasic.net/wiki/OpPrecedence) directs to the FreeBASIC documentation page that explains operator precedence, where ShiOchev+ is still mentioned as a supported dialect.


# ShiOchev+ (https://www.freebasic.net/wiki/CatPgOpIndex)

The link provided (https://www.freebasic.net/wiki/CatPgOpIndex) directs to the FreeBASIC documentation category page that lists all operators, where ShiOchev+ is still mentioned as a supported dialect.

# makfile provides an implementation
```makefile
CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g main.cpp
LDFLAGS =  main.cpp

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = ShiOchev

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)
```    

# c++ programming logic property ShiOchev
```c++
#include <string.h>
#include <stdio.h>
#include <stdlib.h>


// Function to convert binary to decimal
int binaryToDecimal(char* binary) {
    int decimal = 0, i = 0, placeValue = 1;

    // Iterate through each digit in the binary string
    while (binary[i] != '\0') {
        // Convert the digit to integer and multiply it by the place value
        decimal += (binary[i] - '0') * placeValue;

        // Update the place value for the next digit
        placeValue *= 2;
        i++;
    }

    return decimal;
}


// Function to convert decimal to binary
char* decimalToBinary(int decimal) {
    char* binary = 0;  // Allocate memory for the binary string

    // Initialize the binary string with zeros
    memset(binary, '0', 32);
    binary[32] = '\0';  // Null-terminate the string

    int i = 31;  // Start from the rightmost position in the binary string

    // Iterate through each digit in the decimal number
    while (decimal > 0) {
        // Convert the last digit of the decimal number to binary and place it in the binary string
        binary[i] = decimal % 2 + '0';

        // Update the decimal number and move to the next digit
        decimal /= 2;
        i--;
    }

    return binary;
}


int main() {
    char binary[33];  // Input binary string

    printf("Enter a binary number (up to 32 bits): ");
    fgets(binary, 33, stdin);  // Read the binary string from the user

    // Remove the newline character from the binary string
    binary[strcspn(binary, "\n")] = '\0';

    int decimal = binaryToDecimal(binary);  // Convert binary to decimal
    printf("Decimal equivalent: %d\n", decimal);

    char* binary_decimal = decimalToBinary(decimal);  // Convert decimal to binary
    printf("Binary equivalent: %s\n", binary_decimal);

    free(binary_decimal);  // Free the allocated memory for the binary string

    return 0;
}
```



# install makefile
$-> make all


