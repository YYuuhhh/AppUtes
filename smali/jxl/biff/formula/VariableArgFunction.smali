.class Ljxl/biff/formula/VariableArgFunction;
.super Ljxl/biff/formula/Operator;
.source "VariableArgFunction.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private arguments:I

.field private function:Ljxl/biff/formula/Function;

.field private readFromSheet:Z

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/formula/VariableArgFunction;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/VariableArgFunction;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 1
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 65
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/formula/VariableArgFunction;->readFromSheet:Z

    .line 67
    iput-object p1, p0, Ljxl/biff/formula/VariableArgFunction;->settings:Ljxl/WorkbookSettings;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V
    .locals 1
    .param p1, "f"    # Ljxl/biff/formula/Function;
    .param p2, "a"    # I
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 77
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 78
    iput-object p1, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    .line 79
    iput p2, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/formula/VariableArgFunction;->readFromSheet:Z

    .line 81
    iput-object p3, p0, Ljxl/biff/formula/VariableArgFunction;->settings:Ljxl/WorkbookSettings;

    .line 82
    return-void
.end method

.method private handleSpecialCases()V
    .locals 3

    .line 332
    iget-object v0, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    sget-object v1, Ljxl/biff/formula/Function;->SUMPRODUCT:Ljxl/biff/formula/Function;

    if-ne v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 337
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 339
    aget-object v2, v0, v1

    instance-of v2, v2, Ljxl/biff/formula/Area;

    if-eqz v2, :cond_0

    .line 341
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->setAlternateCode()V

    .line 337
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 345
    .end local v0    # "operands":[Ljxl/biff/formula/ParseItem;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 3
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 173
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 175
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 177
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 193
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 194
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 196
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 212
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 213
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 215
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method getBytes()[B
    .locals 8

    .line 286
    invoke-direct {p0}, Ljxl/biff/formula/VariableArgFunction;->handleSpecialCases()V

    .line 289
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 290
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 292
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 294
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 297
    .local v4, "opdata":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 298
    .local v5, "newdata":[B
    array-length v6, v2

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v6, v2

    array-length v7, v4

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    move-object v2, v5

    .line 292
    .end local v4    # "opdata":[B
    .end local v5    # "newdata":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "i":I
    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 305
    .local v3, "newdata":[B
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->useAlternateCode()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode()B

    move-result v4

    goto :goto_1

    :cond_1
    sget-object v4, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v4

    :goto_1
    aput-byte v4, v3, v1

    .line 308
    array-length v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 309
    iget-object v1, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v1}, Ljxl/biff/formula/Function;->getCode()I

    move-result v1

    array-length v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v1, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 311
    return-object v3
.end method

.method getFunction()Ljxl/biff/formula/Function;
    .locals 1

    .line 276
    iget-object v0, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    return-object v0
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 3
    .param p1, "s"    # Ljava/util/Stack;

    .line 113
    iget v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    new-array v1, v0, [Ljxl/biff/formula/ParseItem;

    .line 115
    .local v1, "items":[Ljxl/biff/formula/ParseItem;
    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/formula/ParseItem;

    .line 119
    .local v2, "pi":Ljxl/biff/formula/ParseItem;
    aput-object v2, v1, v0

    .line 115
    .end local v2    # "pi":Ljxl/biff/formula/ParseItem;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    if-ge v0, v2, :cond_1

    .line 124
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method getPrecedence()I
    .locals 1

    .line 322
    const/4 v0, 0x3

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 130
    iget-object v0, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    iget-object v1, p0, Ljxl/biff/formula/VariableArgFunction;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0, v1}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    iget v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    if-lez v0, :cond_2

    .line 135
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 136
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    iget-boolean v1, p0, Ljxl/biff/formula/VariableArgFunction;->readFromSheet:Z

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 141
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    if-ge v1, v3, :cond_0

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 151
    :cond_1
    iget v1, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 153
    iget v1, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    add-int/lit8 v1, v1, -0x2

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 153
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 161
    .end local v0    # "operands":[Ljxl/biff/formula/ParseItem;
    .end local v1    # "i":I
    :cond_2
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 265
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 267
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public read([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 94
    aget-byte v0, p1, p2

    iput v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    .line 95
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 96
    .local v0, "index":I
    invoke-static {v0}, Ljxl/biff/formula/Function;->getFunction(I)Ljxl/biff/formula/Function;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    .line 98
    sget-object v2, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    if-eq v1, v2, :cond_0

    .line 104
    const/4 v1, 0x3

    return v1

    .line 100
    :cond_0
    new-instance v1, Ljxl/biff/formula/FormulaException;

    sget-object v2, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v1, v2, v0}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;I)V

    throw v1
.end method

.method rowInserted(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 231
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 232
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 234
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 250
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 251
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 253
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
