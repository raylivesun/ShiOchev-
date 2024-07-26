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
