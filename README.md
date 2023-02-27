## Grammar

Program -> MAIN() Block
Block -> { VarList StatementList }
VarList -> VarList VarDecl | VarDecl
VarDecl -> Namelist = Type ;
NameList -> NameList , ID | ID
Type -> INT | CHAR | REAL | BOOL | Structure
Structure -> STRUCT ID { VarList StructureStatementList }
StructureStatementList -> StructureStatementList StructureStatement | StructureStatement
StructureStatement -> ID = Expression ;
StatenentList -> StatementList Statement | Statement
Statment -> Loop | IfStatement | ID = Expression ; | READ ( NameList ) ; | WRITE ( ExpressionList) ; | Block
IfStatement -> IF ( Expression ) THEN Statement | IF ( Expression ) THEN Statement ELSE Statement
Loop -> WHILE ( Expression ) THEN Statement
Expression -> Expression || AndExpression | AndExpression
AndExpression -> AndExpression && RelExpression | RelExpresion
ArExpression -> ArExpression + Term | ArExpression - Term | Term
RelExpression -> ArExpression RelOp ArExpresion | ArExpresion
RelOp -> < | > | == | != | <= | >=
Term -> Term * Factor | Term / Factor | Term ^ Factor | Factor
Factor -> ID | CONST | (Expression)
ExpressionList -> ExpressionList, Expression | Expression
