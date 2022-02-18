.class abstract Ljxl/biff/formula/UnaryOperator;
.super Ljxl/biff/formula/Operator;
.source "UnaryOperator.java"

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

    .line 79
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 80
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 81
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 95
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 96
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 97
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 111
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 112
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 113
    return-void
.end method

.method getBytes()[B
    .locals 5

    .line 155
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 156
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v2

    .line 159
    .local v2, "data":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    .line 160
    .local v3, "newdata":[B
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getToken()Ljxl/biff/formula/Token;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode()B

    move-result v4

    aput-byte v4, v3, v1

    .line 163
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
    .local v0, "o1":Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0, v0}, Ljxl/biff/formula/UnaryOperator;->add(Ljxl/biff/formula/ParseItem;)V

    .line 56
    return-void
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 66
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 68
    return-void
.end method

.method abstract getSymbol()Ljava/lang/String;
.end method

.method abstract getToken()Ljxl/biff/formula/Token;
.end method

.method handleImportedCellReferences()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 188
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 189
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

    .line 127
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 128
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 129
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 143
    invoke-virtual {p0}, Ljxl/biff/formula/UnaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 144
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 145
    return-void
.end method
