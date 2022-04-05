%{
#include <stdio.h>
int line_count=0;
int comment_count=0;
%}
%%
" " ;
"\t" ;
print printf("%-13sPRINTF\n",yytext);
println printf("%-13sPRINTLN\n",yytext);
if printf("%-13sIF\n",yytext);
else printf("%-13sELSE\n",yytext);
for printf("%-13sFOR\n",yytext);
int32 printf("%-13sINT\n",yytext);
float32 printf("%-13sFLOAT\n",yytext);
string printf("%-13sSTRING\n",yytext);
bool printf("%-13sBOOL\n",yytext);
true printf("%-13sTRUE\n",yytext);
false printf("%-13sFALSE\n",yytext);
var printf("%-13sVAR\n",yytext);
func printf("%-13sFUNC\n",yytext);
package printf("%-13sPACKAGE\n",yytext);
return printf("%-13sRETURN\n",yytext);
switch printf("%-13sSWITCH\n",yytext);
case printf("%-13sCASE\n",yytext);
default printf("%-13sDEFAULT\n",yytext);
"+" printf("%-13sADD\n",yytext);
"-" printf("%-13sSUB\n",yytext);
"*" printf("%-13sMUL\n",yytext);
"/" printf("%-13sQUO\n",yytext);
"%" printf("%-13sREM\n",yytext);
"++" printf("%-13sINC\n",yytext);
"--" printf("%-13sDEC\n",yytext);
">" printf("%-13sGTR\n",yytext);
"<" printf("%-13sLSS\n",yytext);
">=" printf("%-13sGEQ\n",yytext);
"<=" printf("%-13sLEQ\n",yytext);
"==" printf("%-13sEQL\n",yytext);
"!=" printf("%-13sNEQ\n",yytext);
"=" printf("%-13sASSIGN\n",yytext);
"+=" printf("%-13sADD_ASSIGN\n",yytext);
"-=" printf("%-13sSUB_ASSIGN\n",yytext);
"*=" printf("%-13sMUL_ASSIGN\n",yytext);
"/=" printf("%-13sQUO_ASSIGN\n",yytext);
"%=" printf("%-13sREM_ASSIGN\n",yytext);
"&&" printf("%-13sLAND\n",yytext);
"||" printf("%-13sLOR\n",yytext);
"!" printf("%-13sNOT\n",yytext);
"(" printf("%-13sLPAREN\n",yytext);
")" printf("%-13sRPAREN\n",yytext);
"[" printf("%-13sLBRACK\n",yytext);
"]" printf("%-13sRBRACK\n",yytext);
"{" printf("%-13sLBRACE\n",yytext);
"}" printf("%-13sRBACE\n",yytext);
";" printf("%-13sSEMICOLON\n",yytext);
"," printf("%-13sCOMMA\n",yytext);
"\"" printf("%-13sQUOTA\n",yytext);
"\n" printf("%-13sNEWLINE\n",yytext);
":" printf("%-13sCOLON\n",yytext);
%%
main(int argc, char* argv[]) {
    FILE *fh;

    if (argc == 2 && (fh = fopen(argv[1], "r")))
        yyin = fh;
    yylex();
    return 0;
}
