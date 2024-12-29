%option noyywrap
%{
#include <stdio.h>
%}

%%
[ \t\n]         ; /* ignore rab and newline */
"int"           { printf("TOKEN: :: TYPE , int \n"); }
"long"          { printf("TOKEN: :: TYPE , long \n"); }
"float"         { printf("TOKEN: :: TYPE , float \n"); }
"double"        { printf("TOKEN: :: TYPE , double \n"); }
"while"         { printf("TOKEN: :: WHILE , while \n"); }
"do"            { printf("TOKEN: :: DO , do \n"); }
"not"           { printf("TOKEN: :: NOT , not \n"); }
"and"           { printf("TOKEN: :: AND , and \n"); }
"or"            { printf("TOKEN: :: OR , or \n"); }

[a-zA-Z][a-zA-Z0-9]*    { printf("TOKEN: :: ID , %s \n", yytext); }
[0-9]+(\.[0-9]+)*       { printf("TOKEN: :: NUM , %s \n", yytext); }

"+"             { printf("TOKEN: :: PLUS , + \n"); }
"-"             { printf("TOKEN: :: MINUS , - \n"); }
"*"             { printf("TOKEN: :: MULT , * \n"); }
"/"             { printf("TOKEN: :: DIV , / \n"); }
"<"             { printf("TOKEN: :: LT , < \n"); }
">"             { printf("TOKEN: :: GT , > \n"); }
"<="            { printf("TOKEN: :: LE , <= \n"); }
">="            { printf("TOKEN: :: GE , >= \n"); }
"=="            { printf("TOKEN: :: EQ , == \n"); }
"<>"            { printf("TOKEN: :: NE , <> \n"); }
"="             { printf("TOKEN: :: ASSIGN , = \n"); }
";"             { printf("TOKEN: :: SEMICOLON , ; \n"); }
","             { printf("TOKEN: :: COMMA , , \n"); }
"("             { printf("TOKEN: :: LPAREN , ( \n"); }
")"             { printf("TOKEN: :: RPAREN , ) \n"); }
"{"             { printf("TOKEN: :: LBRACE , { \n"); }
"}"             { printf("TOKEN: :: RBRACE , } \n"); }

.               { printf("Invalid character: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
