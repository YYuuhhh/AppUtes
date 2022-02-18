.class Ljxl/read/biff/StringFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "StringFormulaRecord.java"

# interfaces
.implements Ljxl/LabelCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/StringFormulaCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Ljxl/read/biff/StringFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/StringFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 1
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p5, "si"    # Ljxl/read/biff/SheetImpl;

    .line 149
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 151
    iput-object p3, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 152
    iput-object p4, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 154
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    .line 155
    const-string v0, ""

    iput-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 16
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "excelFile"    # Ljxl/read/biff/File;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p5, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p6, "si"    # Ljxl/read/biff/SheetImpl;
    .param p7, "ws"    # Ljxl/WorkbookSettings;

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 97
    move-object/from16 v4, p4

    iput-object v4, v0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 98
    move-object/from16 v5, p5

    iput-object v5, v0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 100
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/StringFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v6

    iput-object v6, v0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    .line 102
    invoke-virtual/range {p2 .. p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    .line 107
    .local v6, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v7

    .line 108
    .local v7, "nextRecord":Ljxl/read/biff/Record;
    const/4 v8, 0x0

    .line 109
    .local v8, "count":I
    :goto_0
    invoke-virtual {v7}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v9

    sget-object v10, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const/4 v11, 0x4

    if-eq v9, v10, :cond_0

    if-ge v8, v11, :cond_0

    .line 111
    invoke-virtual/range {p2 .. p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v7

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v8, v11, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    move v11, v9

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " @ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 115
    invoke-virtual {v7}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v11

    .line 118
    .local v11, "stringData":[B
    invoke-virtual/range {p2 .. p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v7

    .line 119
    :goto_2
    invoke-virtual {v7}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v12

    sget-object v13, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v12, v13, :cond_2

    .line 121
    invoke-virtual/range {p2 .. p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v7

    .line 122
    array-length v12, v11

    invoke-virtual {v7}, Ljxl/read/biff/Record;->getLength()I

    move-result v13

    add-int/2addr v12, v13

    sub-int/2addr v12, v10

    new-array v12, v12, [B

    .line 123
    .local v12, "d":[B
    array-length v13, v11

    invoke-static {v11, v9, v12, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-virtual {v7}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v7}, Ljxl/read/biff/Record;->getLength()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-static {v13, v10, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    move-object v11, v12

    .line 127
    invoke-virtual/range {p2 .. p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v7

    .line 128
    .end local v12    # "d":[B
    goto :goto_2

    .line 129
    :cond_2
    move-object/from16 v9, p7

    invoke-direct {v0, v11, v9}, Ljxl/read/biff/StringFormulaRecord;->readString([BLjxl/WorkbookSettings;)V

    .line 130
    return-void
.end method

.method private readString([BLjxl/WorkbookSettings;)V
    .locals 8
    .param p1, "d"    # [B
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "pos":I
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 170
    .local v2, "chars":I
    if-nez v2, :cond_0

    .line 172
    const-string v1, ""

    iput-object v1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    .line 173
    return-void

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 176
    aget-byte v4, p1, v0

    .line 177
    .local v4, "optionFlags":I
    add-int/2addr v0, v3

    .line 179
    and-int/lit8 v5, v4, 0xf

    if-eq v5, v4, :cond_1

    .line 183
    const/4 v0, 0x0

    .line 184
    aget-byte v5, p1, v1

    invoke-static {v5, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 185
    aget-byte v4, p1, v3

    .line 186
    const/4 v0, 0x2

    .line 190
    :cond_1
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v1

    .line 193
    .local v5, "extendedString":Z
    :goto_0
    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v1

    .line 195
    .local v6, "richString":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 197
    add-int/lit8 v0, v0, 0x2

    .line 200
    :cond_4
    if-eqz v5, :cond_5

    .line 202
    add-int/lit8 v0, v0, 0x4

    .line 206
    :cond_5
    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_6

    move v1, v3

    .line 208
    .local v1, "asciiEncoding":Z
    :cond_6
    if-eqz v1, :cond_7

    .line 210
    invoke-static {p1, v2, v0, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    goto :goto_2

    .line 214
    :cond_7
    invoke-static {p1, v2, v0}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    .line 216
    :goto_2
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 279
    .local v1, "tokens":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 283
    .local v0, "fp":Ljxl/biff/formula/FormulaParser;
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 284
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    .line 287
    .end local v0    # "fp":Ljxl/biff/formula/FormulaParser;
    .end local v1    # "tokens":[B
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 263
    .local v1, "d":[B
    const/4 v3, 0x0

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    return-object v1

    .line 258
    .end local v1    # "d":[B
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 245
    sget-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    return-object v0
.end method
