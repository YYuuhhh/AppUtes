.class Ljxl/read/biff/ErrorFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "ErrorFormulaRecord.java"

# interfaces
.implements Ljxl/ErrorCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/ErrorFormulaCell;


# instance fields
.field private data:[B

.field private error:Ljxl/biff/formula/FormulaErrorCode;

.field private errorCode:I

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 2
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p5, "si"    # Ljxl/read/biff/SheetImpl;

    .line 84
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 86
    iput-object p3, p0, Ljxl/read/biff/ErrorFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 87
    iput-object p4, p0, Ljxl/read/biff/ErrorFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 88
    invoke-virtual {p0}, Ljxl/read/biff/ErrorFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    .line 90
    const/4 v1, 0x6

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 92
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    iput v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    .line 93
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    if-nez v0, :cond_0

    .line 116
    iget v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    invoke-static {v0}, Ljxl/biff/formula/FormulaErrorCode;->getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    .line 119
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    sget-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 104
    iget v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    return v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 164
    .local v1, "tokens":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/ErrorFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/ErrorFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/ErrorFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 168
    .local v0, "fp":Ljxl/biff/formula/FormulaParser;
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 169
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/ErrorFormulaRecord;->formulaString:Ljava/lang/String;

    .line 172
    .end local v0    # "fp":Ljxl/biff/formula/FormulaParser;
    .end local v1    # "tokens":[B
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljxl/read/biff/ErrorFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 148
    .local v1, "d":[B
    const/4 v3, 0x0

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    return-object v1

    .line 143
    .end local v1    # "d":[B
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 130
    sget-object v0, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    return-object v0
.end method
