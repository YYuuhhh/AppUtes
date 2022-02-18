.class Ljxl/read/biff/NumberFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "NumberFormulaRecord.java"

# interfaces
.implements Ljxl/NumberCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/NumberFormulaCell;


# static fields
.field private static final defaultFormat:Ljava/text/DecimalFormat;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private format:Ljava/text/NumberFormat;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Ljxl/read/biff/NumberFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NumberFormulaRecord;->logger:Ljxl/common/Logger;

    .line 62
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/NumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 2
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p5, "si"    # Ljxl/read/biff/SheetImpl;

    .line 98
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 100
    iput-object p3, p0, Ljxl/read/biff/NumberFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 101
    iput-object p4, p0, Ljxl/read/biff/NumberFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 102
    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    .line 104
    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getXFIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    .line 106
    if-nez v0, :cond_0

    .line 108
    sget-object v0, Ljxl/read/biff/NumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    .line 111
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    .line 112
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 3

    .line 131
    iget-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 175
    .local v1, "tokens":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/NumberFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/NumberFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 179
    .local v0, "fp":Ljxl/biff/formula/FormulaParser;
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 180
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/NumberFormulaRecord;->formulaString:Ljava/lang/String;

    .line 183
    .end local v0    # "fp":Ljxl/biff/formula/FormulaParser;
    .end local v1    # "tokens":[B
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 159
    .local v1, "d":[B
    const/4 v3, 0x0

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    return-object v1

    .line 154
    .end local v1    # "d":[B
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 194
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 141
    sget-object v0, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 121
    iget-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    return-wide v0
.end method
