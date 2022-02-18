.class Ljxl/biff/formula/BuiltInFunction;
.super Ljxl/biff/formula/Operator;
.source "BuiltInFunction.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private function:Ljxl/biff/formula/Function;

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/formula/BuiltInFunction;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/BuiltInFunction;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 0
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 55
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 56
    iput-object p1, p0, Ljxl/biff/formula/BuiltInFunction;->settings:Ljxl/WorkbookSettings;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/Function;Ljxl/WorkbookSettings;)V
    .locals 0
    .param p1, "f"    # Ljxl/biff/formula/Function;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 66
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 67
    iput-object p1, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    .line 68
    iput-object p2, p0, Ljxl/biff/formula/BuiltInFunction;->settings:Ljxl/WorkbookSettings;

    .line 69
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 3
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 147
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 149
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 151
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 167
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 168
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 170
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 186
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 187
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 189
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method getBytes()[B
    .locals 8

    .line 254
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 255
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 257
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 259
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 262
    .local v4, "opdata":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 263
    .local v5, "newdata":[B
    array-length v6, v2

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    array-length v6, v2

    array-length v7, v4

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    move-object v2, v5

    .line 257
    .end local v4    # "opdata":[B
    .end local v5    # "newdata":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "i":I
    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x3

    new-array v3, v3, [B

    .line 270
    .local v3, "newdata":[B
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->useAlternateCode()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Ljxl/biff/formula/Token;->FUNCTION:Ljxl/biff/formula/Token;

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode()B

    move-result v4

    goto :goto_1

    :cond_1
    sget-object v4, Ljxl/biff/formula/Token;->FUNCTION:Ljxl/biff/formula/Token;

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v4

    :goto_1
    aput-byte v4, v3, v1

    .line 273
    iget-object v1, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v1}, Ljxl/biff/formula/Function;->getCode()I

    move-result v1

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 275
    return-object v3
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 3
    .param p1, "s"    # Ljava/util/Stack;

    .line 94
    iget-object v0, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v0}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/formula/ParseItem;

    .line 96
    .local v0, "items":[Ljxl/biff/formula/ParseItem;
    iget-object v1, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v1}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/formula/ParseItem;

    .line 100
    .local v2, "pi":Ljxl/biff/formula/ParseItem;
    aput-object v2, v0, v1

    .line 96
    .end local v2    # "pi":Ljxl/biff/formula/ParseItem;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v2}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method getPrecedence()I
    .locals 1

    .line 286
    const/4 v0, 0x3

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 116
    iget-object v0, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    iget-object v1, p0, Ljxl/biff/formula/BuiltInFunction;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0, v1}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    iget-object v0, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v0}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v0

    .line 121
    .local v0, "numArgs":I
    if-lez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v1

    .line 126
    .local v1, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 128
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 130
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "operands":[Ljxl/biff/formula/ParseItem;
    .end local v2    # "i":I
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 240
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 242
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public read([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 80
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 81
    .local v0, "index":I
    invoke-static {v0}, Ljxl/biff/formula/Function;->getFunction(I)Ljxl/biff/formula/Function;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/formula/BuiltInFunction;->function:Ljxl/biff/formula/Function;

    .line 82
    sget-object v2, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "function code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 83
    const/4 v1, 0x2

    return v1
.end method

.method rowInserted(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 206
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 207
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 209
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 225
    invoke-virtual {p0}, Ljxl/biff/formula/BuiltInFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 226
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 228
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
