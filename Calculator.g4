grammar Calculator;

expression : multExpr (('+' | '-') multExpr)* ;
multExpr   : atomExpr (('*' | '/') atomExpr)* ;
atomExpr   : INT | '(' expression ')' ;
INT        : [0-9]+ ;
WS         : [ \t\r\n]+ -> skip ; // Ignore whitespace