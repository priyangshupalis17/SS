%{
	#include<stdio.h>
	int count=1;
%}

%%
"auto"|"break"|"case"|"continue"|"const"|"char"|"do"|"default"|"double"|"enum"|"extern"|"else"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"struct"|"switch"|"static"|"typedef"|"union"|"unsigned"|"volatile"|"void"|"while" {printf(" keyword: %s		ine: %d\n",yytext,count); } //keyword
[a-zA-Z][a-zA-z0-9]* { printf("Identifier: %s	line: %d\n",yytext,count); } //identifier
[0-9]+ {printf("Number: %s	line: %d\n",yytext,count);} //digit
[\n]	{count++;}
.	;
%%

int main(int argc, char* argv[])
{
	yyin=fopen(argv[1],"r");
	yylex();
	return 0;
}

int yywrap()
{
}
