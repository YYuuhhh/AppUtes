.class abstract Ljxl/biff/formula/BinaryOperator;
.super Ljxl/biff/formula/Operator;
.source "BinaryOperator.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static final logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Ljxl/biff/formula/BinaryOperator;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/BinaryOperator;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 2
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 89
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 90
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 91
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 92
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 106
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 107
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 108
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 109
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 123
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 124
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 125
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 126
    return-void
.end method

.method getBytes()[B
    .locals 8

    .line 170
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 171
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 174
    .local v2, "data":[B
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 176
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 179
    .local v4, "opdata":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 180
    .local v5, "newdata":[B
    array-length v6, v2

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v6, v2

    array-length v7, v4

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    move-object v2, v5

    .line 174
    .end local v4    # "opdata":[B
    .end local v5    # "newdata":[B
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 186
    .end local v3    # "i":I
    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    .line 187
    .local v3, "newdata":[B
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getToken()Ljxl/biff/formula/Token;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode()B

    move-result v4

    aput-byte v4, v3, v1

    .line 190
    return-object v3
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 2
    .param p1, "s"    # Ljava/util/Stack;

    .line 60
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    .line 61
    .local v0, "o1":Ljxl/biff/formula/ParseItem;
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/formula/ParseItem;

    .line 63
    .local v1, "o2":Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0, v0}, Ljxl/biff/formula/BinaryOperator;->add(Ljxl/biff/formula/ParseItem;)V

    .line 64
    invoke-virtual {p0, v1}, Ljxl/biff/formula/BinaryOperator;->add(Ljxl/biff/formula/ParseItem;)V

    .line 65
    return-void
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 75
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 76
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 78
    return-void
.end method

.method abstract getSymbol()Ljava/lang/String;
.end method

.method abstract getToken()Ljxl/biff/formula/Token;
.end method

.method handleImportedCellReferences()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 215
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 216
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 217
    return-void
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method rowInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 140
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 141
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 142
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 143
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 157
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 158
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 159
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 160
    return-void
.end method
