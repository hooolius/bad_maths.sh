#!/bin/bash

FILE="bad_program.c"

echo "removing old program..."
rm $FILE

echo "writing program..."
echo "#include <stdio.h>" >> $FILE
echo "#include <math.h>" >> $FILE
echo "" >> $FILE
echo "int main(void){" >> $FILE
echo "  int result = 0, i = 0;" >> $FILE
echo "  char operand;" >> $FILE
echo "  while(1){" >> $FILE
echo '    printf("\nCurrent result is %d", result);' >> $FILE
echo '    printf("\nPlease enter an operand and a number: ");' >> $FILE
echo '    scanf(" %c %d", &operand, &i);' >> $FILE

echo "    if(operand == 'q'){" >> $FILE
echo '      printf("no quitting");' >> $FILE
echo "    }" >> $FILE

echo "    if(operand == '+'){" >> $FILE
for i in `seq -32767 32767`;
do
    echo "      if(i == $i)" >> $FILE
    echo "        result += $i;" >> $FILE
done
echo "    }" >> $FILE

echo "    if(operand == '-'){" >> $FILE
for i in `seq -32767 32767`;
do
    echo "      if(i == $i)" >> $FILE
    echo "        result -= $i;" >> $FILE
done
echo "    }" >> $FILE

echo "    if(operand == '*'){" >> $FILE

for i in `seq -32767 32767`;
do
    echo "      if(i == $i)" >> $FILE
    echo "        result *= $i;" >> $FILE
done
echo "    }" >> $FILE

echo "    if(operand == '/'){" >> $FILE

for i in `seq -32767 32767`;
do
    echo "      if(i == $i)" >> $FILE
    echo "        result /= $i;" >> $FILE
done
echo "    }" >> $FILE

echo "    if(operand == '^'){" >> $FILE

for i in `seq -32767 32767`;
do
    echo "      if(i == $i)" >> $FILE
    echo "        result = pow(result, $i);" >> $FILE
done
echo "    }" >> $FILE

echo "    if(operand == 'w'){" >> $FILE

echo "    }" >> $FILE

echo "  }" >> $FILE
echo "}" >> $FILE
echo "done writing, program is $(wc -l bad_program.c) lines"

echo "compiling program..."
gcc bad_program.c -lm -o bad_program

echo 'done! file name is "bad_program"'
