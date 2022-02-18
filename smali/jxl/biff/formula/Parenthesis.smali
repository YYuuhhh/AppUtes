.class Ljxl/biff/formula/Parenthesis;
.super Ljxl/biff/formula/Operator;
.source "Parenthesis.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 2
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 75
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 76
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 77
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 91
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 92
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 93
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 107
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 108
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 109
    return-void
.end method

.method getBytes()[B
    .locals 5

    .line 172
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 173
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v2

    .line 176
    .local v2, "data":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    .line 177
    .local v3, "newdata":[B
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getToken()Ljxl/biff/formula/Token;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode()B

    move-result v4

    aput-byte v4, v3, v1

    .line 180
    return-object v3
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 1
    .param p1, "s"    # Ljava/util/Stack;

    .line 53
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    .line 55
    .local v0, "pi":Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0, v0}, Ljxl/biff/formula/Parenthesis;->add(Ljxl/biff/formula/ParseItem;)V

    .line 56
    return-void
.end method

.method getPrecedence()I
    .locals 1

    .line 191
    const/4 v0, 0x4

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 61
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 63
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    return-void
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 161
    sget-object v0, Ljxl/biff/formula/Token;->PARENTHESIS:Ljxl/biff/formula/Token;

    return-object v0
.end method

.method handleImportedCellReferences()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 151
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 152
    return-void
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method rowInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 123
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 124
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 125
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 139
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 140
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 141
    return-void
.end method
