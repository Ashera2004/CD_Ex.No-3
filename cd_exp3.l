%{
#include "cd_exp3.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[a-zA-Z]    { return ID; }
[ \t]       ; // ignore whitespace
[\n]        return '\n';
.           return yytext[0];
%%

int yywrap() {
    return 1;
}

