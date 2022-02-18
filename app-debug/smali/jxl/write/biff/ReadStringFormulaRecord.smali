.class Ljxl/write/biff/ReadStringFormulaRecord;
.super Ljxl/write/biff/ReadFormulaRecord;
.source "ReadStringFormulaRecord.java"

# interfaces
.implements Ljxl/StringFormulaCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/write/biff/ReadFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadStringFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 0
    .param p1, "f"    # Ljxl/biff/FormulaData;

    .line 47
    invoke-direct {p0, p1}, Ljxl/write/biff/ReadFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Ljxl/write/biff/ReadStringFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/StringFormulaCell;

    invoke-interface {v0}, Ljxl/StringFormulaCell;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleFormulaException()[B
    .locals 9

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "expressiondata":[B
    invoke-super {p0}, Ljxl/write/biff/ReadFormulaRecord;->getCellData()[B

    move-result-object v1

    .line 73
    .local v1, "celldata":[B
    invoke-virtual {p0}, Ljxl/write/biff/ReadStringFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    .line 74
    .local v2, "w":Ljxl/write/biff/WritableWorkbookImpl;
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/write/biff/ReadStringFormulaRecord;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v5

    invoke-direct {v3, v4, v2, v2, v5}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 80
    .local v3, "parser":Ljxl/biff/formula/FormulaParser;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 82
    :catch_0
    move-exception v5

    .line 84
    .local v5, "e2":Ljxl/biff/formula/FormulaException;
    sget-object v6, Ljxl/write/biff/ReadStringFormulaRecord;->logger:Ljxl/common/Logger;

    invoke-virtual {v5}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 85
    new-instance v6, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v7

    const-string v8, "\"ERROR\""

    invoke-direct {v6, v8, v2, v2, v7}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    move-object v3, v6

    .line 86
    :try_start_1
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    goto :goto_0

    :catch_1
    move-exception v6

    .local v6, "e3":Ljxl/biff/formula/FormulaException;
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 89
    .end local v5    # "e2":Ljxl/biff/formula/FormulaException;
    .end local v6    # "e3":Ljxl/biff/formula/FormulaException;
    :goto_0
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v5

    .line 90
    .local v5, "formulaBytes":[B
    array-length v6, v5

    const/16 v7, 0x10

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 91
    array-length v6, v5

    const/16 v8, 0xe

    invoke-static {v6, v0, v8}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 92
    array-length v6, v5

    invoke-static {v5, v4, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    const/16 v6, 0x8

    aget-byte v7, v0, v6

    or-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 98
    array-length v6, v1

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 100
    .local v6, "data":[B
    array-length v7, v1

    invoke-static {v1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    array-length v7, v1

    array-length v8, v0

    invoke-static {v0, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    const/4 v7, 0x6

    aput-byte v4, v6, v7

    .line 106
    const/16 v4, 0xc

    const/4 v7, -0x1

    aput-byte v7, v6, v4

    .line 107
    const/16 v4, 0xd

    aput-byte v7, v6, v4

    .line 109
    return-object v6
.end method
