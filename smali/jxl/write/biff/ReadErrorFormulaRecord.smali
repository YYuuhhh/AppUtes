.class Ljxl/write/biff/ReadErrorFormulaRecord;
.super Ljxl/write/biff/ReadFormulaRecord;
.source "ReadErrorFormulaRecord.java"

# interfaces
.implements Ljxl/ErrorFormulaCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Ljxl/write/biff/ReadErrorFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadErrorFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 0
    .param p1, "f"    # Ljxl/biff/FormulaData;

    .line 48
    invoke-direct {p0, p1}, Ljxl/write/biff/ReadFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Ljxl/write/biff/ReadErrorFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/ErrorFormulaCell;

    invoke-interface {v0}, Ljxl/ErrorFormulaCell;->getErrorCode()I

    move-result v0

    return v0
.end method

.method protected handleFormulaException()[B
    .locals 13

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "expressiondata":[B
    invoke-super {p0}, Ljxl/write/biff/ReadFormulaRecord;->getCellData()[B

    move-result-object v1

    .line 73
    .local v1, "celldata":[B
    invoke-virtual {p0}, Ljxl/write/biff/ReadErrorFormulaRecord;->getErrorCode()I

    move-result v2

    .line 74
    .local v2, "errorCode":I
    const/4 v3, 0x0

    .line 76
    .local v3, "formulaString":Ljava/lang/String;
    sget-object v4, Ljxl/biff/formula/FormulaErrorCode;->DIV0:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v4}, Ljxl/biff/formula/FormulaErrorCode;->getCode()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 78
    const-string v3, "1/0"

    goto :goto_0

    .line 80
    :cond_0
    sget-object v4, Ljxl/biff/formula/FormulaErrorCode;->VALUE:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v4}, Ljxl/biff/formula/FormulaErrorCode;->getCode()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 82
    const-string v3, "\"\"/0"

    goto :goto_0

    .line 84
    :cond_1
    sget-object v4, Ljxl/biff/formula/FormulaErrorCode;->REF:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v4}, Ljxl/biff/formula/FormulaErrorCode;->getCode()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 86
    const-string v3, "\"#REF!\""

    goto :goto_0

    .line 90
    :cond_2
    const-string v3, "\"ERROR\""

    .line 94
    :goto_0
    invoke-virtual {p0}, Ljxl/write/biff/ReadErrorFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v4

    .line 95
    .local v4, "w":Ljxl/write/biff/WritableWorkbookImpl;
    new-instance v5, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v4}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    invoke-direct {v5, v3, v4, v4, v6}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 101
    .local v5, "parser":Ljxl/biff/formula/FormulaParser;
    :try_start_0
    invoke-virtual {v5}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 103
    :catch_0
    move-exception v6

    .line 105
    .local v6, "e2":Ljxl/biff/formula/FormulaException;
    sget-object v7, Ljxl/write/biff/ReadErrorFormulaRecord;->logger:Ljxl/common/Logger;

    invoke-virtual {v6}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 107
    .end local v6    # "e2":Ljxl/biff/formula/FormulaException;
    :goto_1
    invoke-virtual {v5}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v6

    .line 108
    .local v6, "formulaBytes":[B
    array-length v7, v6

    const/16 v8, 0x10

    add-int/2addr v7, v8

    new-array v0, v7, [B

    .line 109
    array-length v7, v6

    const/16 v9, 0xe

    invoke-static {v7, v0, v9}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 110
    array-length v7, v6

    const/4 v9, 0x0

    invoke-static {v6, v9, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/16 v7, 0x8

    aget-byte v8, v0, v7

    const/4 v10, 0x2

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 116
    array-length v8, v1

    array-length v11, v0

    add-int/2addr v8, v11

    new-array v8, v8, [B

    .line 118
    .local v8, "data":[B
    array-length v11, v1

    invoke-static {v1, v9, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v11, v1

    array-length v12, v0

    invoke-static {v0, v9, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    const/4 v9, 0x6

    aput-byte v10, v8, v9

    .line 124
    const/16 v9, 0xc

    const/4 v10, -0x1

    aput-byte v10, v8, v9

    .line 125
    const/16 v9, 0xd

    aput-byte v10, v8, v9

    .line 128
    int-to-byte v9, v2

    aput-byte v9, v8, v7

    .line 130
    return-object v8
.end method
