.class Ljxl/write/biff/ReadNumberFormulaRecord;
.super Ljxl/write/biff/ReadFormulaRecord;
.source "ReadNumberFormulaRecord.java"

# interfaces
.implements Ljxl/NumberFormulaCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Ljxl/write/biff/ReadNumberFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadNumberFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 0
    .param p1, "f"    # Ljxl/biff/FormulaData;

    .line 49
    invoke-direct {p0, p1}, Ljxl/write/biff/ReadFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 70
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/NumberFormulaCell;

    invoke-interface {v0}, Ljxl/NumberFormulaCell;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/NumberFormulaCell;

    invoke-interface {v0}, Ljxl/NumberFormulaCell;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method protected handleFormulaException()[B
    .locals 9

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "expressiondata":[B
    invoke-super {p0}, Ljxl/write/biff/ReadFormulaRecord;->getCellData()[B

    move-result-object v1

    .line 86
    .local v1, "celldata":[B
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    .line 87
    .local v2, "w":Ljxl/write/biff/WritableWorkbookImpl;
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v5

    invoke-direct {v3, v4, v2, v2, v5}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 93
    .local v3, "parser":Ljxl/biff/formula/FormulaParser;
    :try_start_0
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e2":Ljxl/biff/formula/FormulaException;
    sget-object v5, Ljxl/write/biff/ReadNumberFormulaRecord;->logger:Ljxl/common/Logger;

    invoke-virtual {v4}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 99
    .end local v4    # "e2":Ljxl/biff/formula/FormulaException;
    :goto_0
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v4

    .line 100
    .local v4, "formulaBytes":[B
    array-length v5, v4

    const/16 v6, 0x10

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 101
    array-length v5, v4

    const/16 v7, 0xe

    invoke-static {v5, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 102
    array-length v5, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    const/16 v5, 0x8

    aget-byte v6, v0, v5

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 108
    array-length v5, v1

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 110
    .local v5, "data":[B
    array-length v6, v1

    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    array-length v6, v1

    array-length v8, v0

    invoke-static {v0, v7, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getValue()D

    move-result-wide v6

    const/4 v8, 0x6

    invoke-static {v6, v7, v5, v8}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 117
    return-object v5
.end method
