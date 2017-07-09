/******************************************************************/
/* This is a simple test program. It finds the largest number in  */
/*  a list of integers.                             */
/******************************************************************/
int LIST[35] = {4, 5, 3, 6, 1, 8, 2, 12, 34, 7, 11, 81, 43, 15, 76, 35, 21, 29, 47, 32, 10, 77, 65, 62, 19, 95, 48, 55, 33, 13, 89, 92, 83 42, 0};
int TEST_PROGRAM()
{
    int big, i;
    big = LIST[0];
    for ( i = 1; i <= 34; i++)
    {
        if ( LIST[i] > big )
            big = LIST[i];
    }
    return big;
}