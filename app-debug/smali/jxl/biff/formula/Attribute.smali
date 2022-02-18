.class Ljxl/biff/formula/Attribute;
.super Ljxl/biff/formula/Operator;
.source "Attribute.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static final CHOOSE_MASK:I = 0x4

.field private static final GOTO_MASK:I = 0x8

.field private static final IF_MASK:I = 0x2

.field private static final SUM_MASK:I = 0x10

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private ifConditions:Ljxl/biff/formula/VariableArgFunction;

.field private options:I

.field private settings:Ljxl/WorkbookSettings;

.field private word:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/formula/Attribute;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Attribute;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 0
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 71
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 72
    iput-object p1, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V
    .locals 2
    .param p1, "sf"    # Ljxl/biff/formula/StringFunction;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 82
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 83
    iput-object p2, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    .line 85
    invoke-virtual {p1, p2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    if-ne v0, v1, :cond_0

    .line 87
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ljxl/biff/formula/Attribute;->options:I

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    if-ne v0, v1, :cond_1

    .line 91
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljxl/biff/formula/Attribute;->options:I

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method private getIf()[B
    .locals 16

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v1

    .line 285
    .local v1, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v2, 0x0

    .line 286
    .local v2, "falseOffsetPos":I
    const/4 v3, 0x0

    .line 287
    .local v3, "gotoEndPos":I
    array-length v4, v1

    .line 290
    .local v4, "numArgs":I
    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v6

    .line 293
    .local v6, "data":[B
    array-length v7, v6

    .line 294
    .local v7, "pos":I
    array-length v8, v6

    add-int/lit8 v8, v8, 0x4

    new-array v8, v8, [B

    .line 295
    .local v8, "newdata":[B
    array-length v9, v6

    invoke-static {v6, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object v6, v8

    .line 297
    sget-object v9, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v9}, Ljxl/biff/formula/Token;->getCode()B

    move-result v9

    aput-byte v9, v6, v7

    .line 298
    add-int/lit8 v9, v7, 0x1

    const/4 v10, 0x2

    aput-byte v10, v6, v9

    .line 299
    add-int/lit8 v2, v7, 0x2

    .line 302
    const/4 v9, 0x1

    aget-object v11, v1, v9

    invoke-virtual {v11}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v11

    .line 303
    .local v11, "truedata":[B
    array-length v12, v6

    array-length v13, v11

    add-int/2addr v12, v13

    new-array v8, v12, [B

    .line 304
    array-length v12, v6

    invoke-static {v6, v5, v8, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    array-length v12, v6

    array-length v13, v11

    invoke-static {v11, v5, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    move-object v6, v8

    .line 309
    array-length v7, v6

    .line 310
    array-length v12, v6

    add-int/lit8 v12, v12, 0x4

    new-array v8, v12, [B

    .line 311
    array-length v12, v6

    invoke-static {v6, v5, v8, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    move-object v6, v8

    .line 313
    sget-object v12, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v12}, Ljxl/biff/formula/Token;->getCode()B

    move-result v12

    aput-byte v12, v6, v7

    .line 314
    add-int/lit8 v12, v7, 0x1

    const/16 v13, 0x8

    aput-byte v13, v6, v12

    .line 315
    add-int/lit8 v3, v7, 0x2

    .line 318
    const/4 v12, 0x3

    if-le v4, v10, :cond_0

    .line 321
    array-length v14, v6

    sub-int/2addr v14, v2

    sub-int/2addr v14, v10

    invoke-static {v14, v6, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 325
    add-int/lit8 v14, v4, -0x1

    aget-object v14, v1, v14

    invoke-virtual {v14}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v14

    .line 326
    .local v14, "falsedata":[B
    array-length v15, v6

    array-length v10, v14

    add-int/2addr v15, v10

    new-array v8, v15, [B

    .line 327
    array-length v10, v6

    invoke-static {v6, v5, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    array-length v10, v6

    array-length v15, v14

    invoke-static {v14, v5, v8, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    move-object v6, v8

    .line 332
    array-length v7, v6

    .line 333
    array-length v10, v6

    add-int/lit8 v10, v10, 0x4

    new-array v8, v10, [B

    .line 334
    array-length v10, v6

    invoke-static {v6, v5, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    move-object v6, v8

    .line 336
    sget-object v10, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v10}, Ljxl/biff/formula/Token;->getCode()B

    move-result v10

    aput-byte v10, v6, v7

    .line 337
    add-int/lit8 v10, v7, 0x1

    aput-byte v13, v6, v10

    .line 338
    add-int/lit8 v10, v7, 0x2

    aput-byte v12, v6, v10

    .line 342
    .end local v14    # "falsedata":[B
    :cond_0
    array-length v7, v6

    .line 343
    array-length v10, v6

    add-int/lit8 v10, v10, 0x4

    new-array v8, v10, [B

    .line 344
    array-length v10, v6

    invoke-static {v6, v5, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    move-object v6, v8

    .line 346
    sget-object v10, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v10}, Ljxl/biff/formula/Token;->getCode()B

    move-result v10

    aput-byte v10, v6, v7

    .line 347
    add-int/lit8 v10, v7, 0x1

    int-to-byte v13, v4

    aput-byte v13, v6, v10

    .line 348
    add-int/lit8 v10, v7, 0x2

    aput-byte v9, v6, v10

    .line 349
    add-int/lit8 v10, v7, 0x3

    aput-byte v5, v6, v10

    .line 352
    array-length v5, v6

    sub-int/2addr v5, v9

    .line 354
    .local v5, "endPos":I
    if-ge v4, v12, :cond_1

    .line 357
    sub-int v9, v5, v2

    add-int/lit8 v9, v9, -0x5

    invoke-static {v9, v6, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 362
    :cond_1
    sub-int v9, v5, v3

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-static {v9, v6, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 365
    return-object v6
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 3
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 398
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 400
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 427
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 429
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 456
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 458
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 8

    .line 242
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 243
    .local v1, "data":[B
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isSum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v2

    .line 249
    .local v2, "operands":[Ljxl/biff/formula/ParseItem;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 251
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 254
    .local v4, "opdata":[B
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 255
    .local v5, "newdata":[B
    array-length v6, v1

    invoke-static {v1, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    array-length v6, v1

    array-length v7, v4

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    move-object v1, v5

    .line 249
    .end local v4    # "opdata":[B
    .end local v5    # "newdata":[B
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 261
    .end local v3    # "i":I
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 262
    .local v3, "newdata":[B
    array-length v4, v1

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    array-length v0, v1

    sget-object v4, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v4}, Ljxl/biff/formula/Token;->getCode()B

    move-result v4

    aput-byte v4, v3, v0

    .line 264
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x10

    aput-byte v4, v3, v0

    .line 265
    move-object v1, v3

    .line 266
    .end local v2    # "operands":[Ljxl/biff/formula/ParseItem;
    .end local v3    # "newdata":[B
    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-direct {p0}, Ljxl/biff/formula/Attribute;->getIf()[B

    move-result-object v0

    return-object v0

    .line 272
    :cond_2
    :goto_1
    return-object v1
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 2
    .param p1, "s"    # Ljava/util/Stack;

    .line 188
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    .line 191
    .local v0, "o1":Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0, v0}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    .line 192
    .end local v0    # "o1":Ljxl/biff/formula/ParseItem;
    goto :goto_0

    .line 193
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    .line 196
    .restart local v0    # "o1":Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0, v0}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    .line 198
    .end local v0    # "o1":Ljxl/biff/formula/ParseItem;
    :cond_1
    :goto_0
    return-void
.end method

.method getPrecedence()I
    .locals 1

    .line 376
    const/4 v0, 0x3

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 207
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x29

    const/16 v3, 0x28

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 210
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    sget-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    iget-object v4, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v1, v4}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    .end local v0    # "operands":[Ljxl/biff/formula/ParseItem;
    goto :goto_1

    .line 215
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 217
    sget-object v0, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    iget-object v1, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0, v1}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 223
    .restart local v0    # "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 225
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 226
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    .end local v0    # "operands":[Ljxl/biff/formula/ParseItem;
    :cond_2
    :goto_1
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 3

    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 538
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 540
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public isChoose()Z
    .locals 1

    .line 178
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunction()Z
    .locals 1

    .line 138
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoto()Z
    .locals 1

    .line 168
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIf()Z
    .locals 1

    .line 158
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSum()Z
    .locals 1

    .line 148
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 118
    aget-byte v0, p1, p2

    iput v0, p0, Ljxl/biff/formula/Attribute;->options:I

    .line 119
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Attribute;->word:I

    .line 121
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isChoose()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 128
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Attribute;->word:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method rowInserted(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 474
    const/4 v0, 0x0

    .line 476
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 485
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 487
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 489
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v1}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 514
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 516
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 518
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V
    .locals 1
    .param p1, "vaf"    # Ljxl/biff/formula/VariableArgFunction;

    .line 102
    iput-object p1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    .line 106
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljxl/biff/formula/Attribute;->options:I

    .line 107
    return-void
.end method
