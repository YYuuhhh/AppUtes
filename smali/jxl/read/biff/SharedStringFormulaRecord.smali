.class public Ljxl/read/biff/SharedStringFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedStringFormulaRecord.java"

# interfaces
.implements Ljxl/LabelCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/StringFormulaCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;
    }
.end annotation


# static fields
.field protected static final EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Ljxl/read/biff/SharedStringFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->logger:Ljxl/common/Logger;

    .line 60
    new-instance v0, Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;-><init>(Ljxl/read/biff/SharedStringFormulaRecord$1;)V

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 12
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "excelFile"    # Ljxl/read/biff/File;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p5, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p6, "si"    # Ljxl/read/biff/SheetImpl;
    .param p7, "ws"    # Ljxl/WorkbookSettings;

    .line 81
    move-object v7, p0

    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 82
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    .line 85
    .local v0, "pos":I
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v1

    .line 89
    .local v1, "filepos":I
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    .line 90
    .local v2, "nextRecord":Ljxl/read/biff/Record;
    const/4 v3, 0x0

    .line 91
    .local v3, "count":I
    :goto_0
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const/4 v6, 0x4

    if-eq v4, v5, :cond_0

    if-ge v3, v6, :cond_0

    .line 93
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v6

    .line 101
    .local v6, "stringData":[B
    invoke-virtual {p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v2

    .line 102
    :goto_2
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v8

    sget-object v9, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v8, v9, :cond_2

    .line 104
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    .line 105
    array-length v8, v6

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getLength()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    new-array v8, v8, [B

    .line 106
    .local v8, "d":[B
    array-length v9, v6

    invoke-static {v6, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getLength()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-static {v9, v5, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    move-object v6, v8

    .line 110
    invoke-virtual {p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v2

    .line 111
    .end local v8    # "d":[B
    goto :goto_2

    .line 113
    :cond_2
    aget-byte v4, v6, v4

    aget-byte v8, v6, v5

    invoke-static {v4, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 115
    .local v4, "chars":I
    const/4 v8, 0x0

    .line 116
    .local v8, "unicode":Z
    const/4 v9, 0x3

    .line 117
    .local v9, "startpos":I
    array-length v10, v6

    add-int/lit8 v11, v4, 0x2

    if-ne v10, v11, :cond_3

    .line 121
    const/4 v5, 0x2

    .line 122
    .end local v9    # "startpos":I
    .local v5, "startpos":I
    const/4 v8, 0x0

    goto :goto_3

    .line 124
    .end local v5    # "startpos":I
    .restart local v9    # "startpos":I
    :cond_3
    const/4 v10, 0x2

    aget-byte v10, v6, v10

    if-ne v10, v5, :cond_4

    .line 127
    const/4 v5, 0x3

    .line 128
    .end local v9    # "startpos":I
    .restart local v5    # "startpos":I
    const/4 v8, 0x1

    goto :goto_3

    .line 133
    .end local v5    # "startpos":I
    .restart local v9    # "startpos":I
    :cond_4
    const/4 v5, 0x3

    .line 134
    .end local v9    # "startpos":I
    .restart local v5    # "startpos":I
    const/4 v8, 0x0

    .line 137
    :goto_3
    if-nez v8, :cond_5

    .line 139
    move-object/from16 v9, p7

    invoke-static {v6, v4, v5, v9}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    goto :goto_4

    .line 143
    :cond_5
    move-object/from16 v9, p7

    invoke-static {v6, v4, v5}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    .line 148
    :goto_4
    move-object v10, p2

    invoke-virtual {p2, v1}, Ljxl/read/biff/File;->setPos(I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;)V
    .locals 7
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "excelFile"    # Ljxl/read/biff/File;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p5, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p6, "si"    # Ljxl/read/biff/SheetImpl;
    .param p7, "dummy"    # Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    .line 170
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 225
    .local v0, "fp":Ljxl/biff/formula/FormulaParser;
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 226
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    .line 228
    .local v1, "rpnTokens":[B
    array-length v2, v1

    const/16 v3, 0x16

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 231
    .local v2, "data":[B
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getRow()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 232
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getColumn()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v4, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 233
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getXFIndex()I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v4, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 237
    const/4 v4, 0x6

    aput-byte v5, v2, v4

    .line 238
    const/16 v6, 0xc

    const/4 v7, -0x1

    aput-byte v7, v2, v6

    .line 239
    const/16 v6, 0xd

    aput-byte v7, v2, v6

    .line 242
    array-length v6, v1

    invoke-static {v1, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v3, v1

    const/16 v6, 0x14

    invoke-static {v3, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 246
    array-length v3, v2

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 247
    .local v3, "d":[B
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v3

    .line 216
    .end local v0    # "fp":Ljxl/biff/formula/FormulaParser;
    .end local v1    # "rpnTokens":[B
    .end local v2    # "data":[B
    .end local v3    # "d":[B
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 202
    sget-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    return-object v0
.end method
