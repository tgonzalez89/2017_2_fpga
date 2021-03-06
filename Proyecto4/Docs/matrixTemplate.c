#include <stdio.h>

//unsigned int* SOME_NIOS_REG = (unsigned int*)0x00021000;
//sustituya por sus registros NIOS!

signed char RANDA[68] = {0x2e, 0xc2, 0x37, 0x20, 0xc9, 0xea, 0xe7, 0x25, 0x32, 0xc0, 0x38, 0x00, 0xd6, 0xc8, 0xde, 0x34, 0xe6, 0x0c, 0xf4, 0xd0, 0xc6, 0x04, 0xda, 0x22, 0xd7, 0xe2, 0xdf, 0xcf, 0xdc, 0x15, 0xf1, 0x32, 0xc1, 0x04, 0xeb, 0x37, 0xc2, 0x34, 0xeb, 0xe2, 0x12, 0xf9, 0x1a, 0xdb, 0xc2, 0xf7, 0xcb, 0xca, 0xfe, 0xc3, 0xd8, 0x0e, 0x37, 0xd1, 0xd8, 0xe5, 0x35, 0xd0, 0xed, 0xd8, 0x13, 0x2e, 0x2f, 0x13, 0x00, 0x00, 0x00, 0x00};
signed char RANDB[68] = {0xf7, 0xc4, 0x33, 0x0e, 0xd3, 0x11, 0x30, 0x1b, 0xdc, 0xf9, 0x2a, 0xe7, 0x25, 0x21, 0x18, 0xf1, 0xf6, 0xcb, 0xd8, 0xc8, 0x11, 0x0d, 0x20, 0x2a, 0xc6, 0x3e, 0xfe, 0xde, 0x1a, 0xfc, 0xc7, 0xc6, 0xc0, 0x36, 0x04, 0x0d, 0x2a, 0xc2, 0xe0, 0x0c, 0x0a, 0xde, 0x0f, 0x18, 0xdc, 0xeb, 0xcb, 0x1f, 0xf4, 0x35, 0x38, 0x1f, 0x1f, 0xc6, 0x0e, 0xe0, 0x3a, 0xc3, 0xef, 0x0a, 0xf3, 0xf8, 0xe2, 0xc9, 0x00, 0x00, 0x00, 0x00};

//Los datos son: [1-bit signo repetido][7 bits de dato en complemento a 2 (bit mas alto es de signo, 6 de magnitud)]
//los bits más altos son de signo, + = 00 ; - = 11 .
//e.g. 0x19 = 0_0011001b = +25  ;   0xDD = 1_1011101b = -35

typedef union  {
    unsigned char cd[2][2]; //version sin signo
    signed char cds[2][2]; //version con signo complemento a 2
    unsigned int id; //cuatro valores concatenados en un dato de 32 bits, "cuál es el orden?"
} matrixClass;

int main() {
    matrixClass* matA;
    matrixClass* matB;

    //tomo la posición de uno de los arreglos, lo interpreto
    //como datos tipo matrixClass vector y lo asigno a uno 
    //de los vectores
    matA = (matrixClass*)RANDA;
    matB = (matrixClass*)RANDB;

    unsigned char i;
    for (i = 0; i < 16; i++) {
        //Aqui su codigo para operar las matrices..

        //C = A*B = | C00 C01 | = | A00 A01 | * | B00 B01 | = | A00*B00+A01*B10 A00*B01+A01*B11 |
        //          | C10 C11 |   | A10 A11 |   | B10 B11 |   | A10*B00+A11*B10 A10*B01+A11*B11 |

        printf("A = | %3d %3d | B = | %3d %3d |\n", (*matA).cds[0][0], (*matA).cds[0][1], (*matB).cds[0][0], (*matB).cds[0][1]);
        printf("    | %3d %3d |     | %3d %3d |\n", (*matA).cds[1][0], (*matA).cds[1][1], (*matB).cds[1][0], (*matB).cds[1][1]);

        short c00 = (*matA).cds[0][0] * (*matB).cds[0][0] + (*matA).cds[0][1] * (*matB).cds[1][0];
        short c01 = (*matA).cds[0][0] * (*matB).cds[0][1] + (*matA).cds[0][1] * (*matB).cds[1][1];
        short c10 = (*matA).cds[1][0] * (*matB).cds[0][0] + (*matA).cds[1][1] * (*matB).cds[1][0];
        short c11 = (*matA).cds[1][0] * (*matB).cds[0][1] + (*matA).cds[1][1] * (*matB).cds[1][1];
        int determinant = c00*c11 - c01*c10;

        printf("C = | %5d %5d |\n", c00, c01);
        printf("    | %5d %5d |\n", c10, c11);
        printf("|C| = %d\n\n", determinant);

        //--------------------------
        //algunos ejemplos de como usar los objetos matriz
        //someVar = (*matA).id;//asigno a someVar el valor concatenado en 32 bits
        //someVar = (*matA).cd[0][0];//asigno a someVar un elemento de la matriz como dato sin signo
        //someVar = (*matA).cds[0][0];//asigno a someVar un elemento de la matriz como dato con signo
        //--------------------------
        //recuerde que al cambiar el tipo de dato no altera la información, solo como se interpreta el dato...

        //Actualizar a la siguiente matriz
        //la dirección cambia una posición
        //del tamaño de matrixClass
        matA = matA+1;
        matB = matB+1;
    }

    return 0;
}
