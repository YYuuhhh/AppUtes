.class public Ljxl/write/biff/FormulaRecord;
.super Ljxl/write/biff/CellValue;
.source "FormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private copiedFrom:Ljxl/write/biff/CellValue;

.field private formulaBytes:[B

.field private formulaString:Ljava/lang/String;

.field private formulaToParse:Ljava/lang/String;

.field private parser:Ljxl/biff/formula/FormulaParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Ljxl/write/biff/FormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "f"    # Ljava/lang/String;

    .line 84
    sget-object v0, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 85
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 87
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "f"    # Ljava/lang/String;
    .param p4, "st"    # Ljxl/format/CellFormat;

    .line 96
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 97
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 99
    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/FormulaRecord;)V
    .locals 4
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "fr"    # Ljxl/write/biff/FormulaRecord;

    .line 110
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 111
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 112
    iget-object v0, p3, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 113
    iget-object v1, p3, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/ReadFormulaRecord;)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "rfr"    # Ljxl/write/biff/ReadFormulaRecord;

    .line 125
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 128
    :try_start_0
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 129
    invoke-virtual {p3}, Ljxl/write/biff/ReadFormulaRecord;->getFormulaBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Ljxl/common/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method

.method private initialize(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V
    .locals 5
    .param p1, "ws"    # Ljxl/WorkbookSettings;
    .param p2, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p3, "nt"    # Ljxl/biff/WorkbookMethods;

    .line 150
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/FormulaRecord;->initializeCopiedFormula(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V

    .line 153
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 160
    :try_start_0
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 161
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when parsing formula "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getColumn()I

    move-result v3

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 175
    :try_start_1
    const-string v1, "ERROR(1)"

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 176
    new-instance v1, Ljxl/biff/formula/FormulaParser;

    iget-object v2, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 177
    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 178
    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    goto :goto_0

    .line 181
    :catch_1
    move-exception v1

    .line 184
    .local v1, "e2":Ljxl/biff/formula/FormulaException;
    sget-object v2, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljxl/common/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 187
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    .end local v1    # "e2":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method

.method private initializeCopiedFormula(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V
    .locals 7
    .param p1, "ws"    # Ljxl/WorkbookSettings;
    .param p2, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p3, "nt"    # Ljxl/biff/WorkbookMethods;

    .line 202
    :try_start_0
    new-instance v6, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    move-object v0, v6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v6, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 203
    invoke-virtual {v6}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 204
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getColumn()I

    move-result v1

    iget-object v2, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getRow()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljxl/biff/formula/FormulaParser;->adjustRelativeCellReferences(II)V

    .line 207
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    :try_start_1
    const-string v1, "ERROR(1)"

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 216
    new-instance v1, Ljxl/biff/formula/FormulaParser;

    iget-object v2, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 217
    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 218
    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    goto :goto_0

    .line 222
    :catch_1
    move-exception v1

    .line 225
    .local v1, "e2":Ljxl/biff/formula/FormulaException;
    sget-object v2, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljxl/common/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    .end local v1    # "e2":Ljxl/biff/formula/FormulaException;
    :goto_0
    return-void
.end method


# virtual methods
.method columnInserted(Ljxl/Sheet;II)V
    .locals 2
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "col"    # I

    .line 333
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 334
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 335
    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .locals 2
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "col"    # I

    .line 347
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 348
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 349
    return-void
.end method

.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .line 319
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 6

    .line 254
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 255
    .local v0, "celldata":[B
    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getFormulaData()[B

    move-result-object v1

    .line 256
    .local v1, "formulaData":[B
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 257
    .local v2, "data":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    return-object v2
.end method

.method public getFormulaData()[B
    .locals 5

    .line 293
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v1, v0

    const/16 v2, 0x10

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 294
    .local v1, "data":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    const/4 v0, 0x6

    aput-byte v2, v1, v0

    .line 297
    const/4 v0, 0x7

    const/16 v2, 0x40

    aput-byte v2, v1, v0

    .line 298
    const/16 v0, 0xc

    const/16 v2, -0x20

    aput-byte v2, v1, v0

    .line 299
    const/16 v0, 0xd

    const/4 v2, -0x4

    aput-byte v2, v1, v0

    .line 301
    const/16 v0, 0x8

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 304
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v0, v0

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 306
    return-object v1
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 270
    sget-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    return-object v0
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .locals 2
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "row"    # I

    .line 361
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 362
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 363
    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .locals 2
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "row"    # I

    .line 375
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 376
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 377
    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 3
    .param p1, "fr"    # Ljxl/biff/FormattingRecords;
    .param p2, "ss"    # Ljxl/write/biff/SharedStrings;
    .param p3, "s"    # Ljxl/write/biff/WritableSheetImpl;

    .line 242
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 243
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljxl/write/biff/FormulaRecord;->initialize(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V

    .line 244
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableWorkbookImpl;->addRCIRCell(Ljxl/write/biff/CellValue;)V

    .line 245
    return-void
.end method
