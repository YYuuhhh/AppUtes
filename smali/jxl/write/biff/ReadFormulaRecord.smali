.class Ljxl/write/biff/ReadFormulaRecord;
.super Ljxl/write/biff/CellValue;
.source "ReadFormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private formula:Ljxl/biff/FormulaData;

.field private parser:Ljxl/biff/formula/FormulaParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Ljxl/write/biff/ReadFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 1
    .param p1, "f"    # Ljxl/biff/FormulaData;

    .line 70
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 71
    iput-object p1, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    .line 72
    return-void
.end method


# virtual methods
.method columnInserted(Ljxl/Sheet;II)V
    .locals 10
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "col"    # I

    .line 272
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 275
    .local v0, "formulaData":[B
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 276
    .local v2, "formulaBytes":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 283
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 286
    .end local v0    # "formulaData":[B
    .end local v2    # "formulaBytes":[B
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot insert column within formula:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 292
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .locals 10
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "col"    # I

    .line 306
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 309
    .local v0, "formulaData":[B
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 310
    .local v2, "formulaBytes":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 317
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 320
    .end local v0    # "formulaData":[B
    .end local v2    # "formulaBytes":[B
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot remove column within formula:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 326
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method

.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .line 242
    new-instance v0, Ljxl/write/biff/FormulaRecord;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/biff/FormulaRecord;-><init>(IILjxl/write/biff/ReadFormulaRecord;)V

    return-object v0
.end method

.method protected final getCellData()[B
    .locals 1

    .line 76
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 7

    .line 134
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 135
    .local v0, "celldata":[B
    const/4 v1, 0x0

    .line 139
    .local v1, "expressiondata":[B
    :try_start_0
    iget-object v2, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v2}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v2

    .line 146
    .local v2, "formulaBytes":[B
    array-length v4, v2

    const/16 v5, 0x10

    add-int/2addr v4, v5

    new-array v4, v4, [B

    move-object v1, v4

    .line 147
    array-length v4, v2

    const/16 v6, 0xe

    invoke-static {v4, v1, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 148
    array-length v4, v2

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .end local v2    # "formulaBytes":[B
    :goto_0
    const/16 v2, 0x8

    aget-byte v4, v1, v2

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 155
    array-length v2, v0

    array-length v4, v1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 157
    .local v2, "data":[B
    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length v4, v0

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-object v2

    .line 162
    .end local v2    # "data":[B
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljxl/biff/formula/FormulaException;
    sget-object v3, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getColumn()I

    move-result v5

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getRow()I

    move-result v6

    invoke-static {v5, v6}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->handleFormulaException()[B

    move-result-object v3

    return-object v3
.end method

.method public getFormula()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    check-cast v0, Ljxl/FormulaCell;

    invoke-interface {v0}, Ljxl/FormulaCell;->getFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormulaBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getFormulaData()[B

    move-result-object v0

    .line 227
    .local v0, "readFormulaData":[B
    array-length v1, v0

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 228
    .local v1, "formulaBytes":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-object v1
.end method

.method public getFormulaData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 202
    .local v0, "d":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 204
    .local v1, "data":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    const/16 v2, 0x8

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 209
    return-object v1
.end method

.method protected getReadFormula()Ljxl/biff/FormulaData;
    .locals 1

    .line 403
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 180
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getType()Ljxl/CellType;

    move-result-object v0

    return-object v0
.end method

.method protected handleFormulaException()[B
    .locals 8

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "expressiondata":[B
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v1

    .line 92
    .local v1, "celldata":[B
    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    .line 93
    .local v2, "w":Ljxl/write/biff/WritableWorkbookImpl;
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v5

    invoke-direct {v3, v4, v2, v2, v5}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 99
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 101
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e2":Ljxl/biff/formula/FormulaException;
    sget-object v5, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    invoke-virtual {v3}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 104
    new-instance v5, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    const-string v7, "\"ERROR\""

    invoke-direct {v5, v7, v2, v2, v6}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v5, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 105
    :try_start_1
    invoke-virtual {v5}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    goto :goto_0

    :catch_1
    move-exception v5

    .local v5, "e3":Ljxl/biff/formula/FormulaException;
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 108
    .end local v3    # "e2":Ljxl/biff/formula/FormulaException;
    .end local v5    # "e3":Ljxl/biff/formula/FormulaException;
    :goto_0
    iget-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v3

    .line 109
    .local v3, "formulaBytes":[B
    array-length v5, v3

    const/16 v6, 0x10

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 110
    array-length v5, v3

    const/16 v7, 0xe

    invoke-static {v5, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 111
    array-length v5, v3

    invoke-static {v3, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    const/16 v5, 0x8

    aget-byte v6, v0, v5

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 117
    array-length v5, v1

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 119
    .local v5, "data":[B
    array-length v6, v1

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    array-length v6, v1

    array-length v7, v0

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-object v5
.end method

.method public handleImportedCellReferences(Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)Z
    .locals 10
    .param p1, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p2, "mt"    # Ljxl/biff/WorkbookMethods;
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 428
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v1}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v1

    .line 431
    .local v1, "formulaData":[B
    array-length v2, v1

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 432
    .local v2, "formulaBytes":[B
    array-length v4, v2

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    move-object v4, v3

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 437
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 440
    .end local v1    # "formulaData":[B
    .end local v2    # "formulaBytes":[B
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->handleImportedCellReferences()Z

    move-result v0
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 442
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljxl/biff/formula/FormulaException;
    sget-object v2, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot import formula:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 445
    return v0
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .locals 10
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "row"    # I

    .line 340
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 343
    .local v0, "formulaData":[B
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 344
    .local v2, "formulaBytes":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 351
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 354
    .end local v0    # "formulaData":[B
    .end local v2    # "formulaBytes":[B
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot insert row within formula:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 360
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .locals 10
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "row"    # I

    .line 374
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 377
    .local v0, "formulaData":[B
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 378
    .local v2, "formulaBytes":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 385
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 388
    .end local v0    # "formulaData":[B
    .end local v2    # "formulaBytes":[B
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot remove row within formula:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 394
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 1
    .param p1, "fr"    # Ljxl/biff/FormattingRecords;
    .param p2, "ss"    # Ljxl/write/biff/SharedStrings;
    .param p3, "s"    # Ljxl/write/biff/WritableSheetImpl;

    .line 256
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 257
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableWorkbookImpl;->addRCIRCell(Ljxl/write/biff/CellValue;)V

    .line 258
    return-void
.end method
