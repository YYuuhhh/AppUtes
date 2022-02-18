.class public Ljxl/read/biff/SharedErrorFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedErrorFormulaRecord.java"

# interfaces
.implements Ljxl/ErrorCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/ErrorFormulaCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private error:Ljxl/biff/formula/FormulaErrorCode;

.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Ljxl/read/biff/SharedErrorFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedErrorFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;ILjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 7
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "excelFile"    # Ljxl/read/biff/File;
    .param p3, "ec"    # I
    .param p4, "fr"    # Ljxl/biff/FormattingRecords;
    .param p5, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p6, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p7, "si"    # Ljxl/read/biff/SheetImpl;

    .line 83
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 84
    iput p3, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    .line 85
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    invoke-static {v0}, Ljxl/biff/formula/FormulaErrorCode;->getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    .line 111
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    sget-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 96
    iget v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    return v0
.end method

.method public getFormulaData()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 145
    .local v0, "fp":Ljxl/biff/formula/FormulaParser;
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 146
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    .line 148
    .local v1, "rpnTokens":[B
    array-length v2, v1

    const/16 v3, 0x16

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 151
    .local v2, "data":[B
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getRow()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 152
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getColumn()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v4, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 153
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getXFIndex()I

    move-result v4

    const/4 v7, 0x4

    invoke-static {v4, v2, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 155
    const/4 v4, 0x6

    aput-byte v6, v2, v4

    .line 156
    const/16 v6, 0x8

    iget v7, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 157
    const/16 v6, 0xc

    const/4 v7, -0x1

    aput-byte v7, v2, v6

    .line 158
    const/16 v6, 0xd

    aput-byte v7, v2, v6

    .line 161
    array-length v6, v1

    invoke-static {v1, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v3, v1

    const/16 v6, 0x14

    invoke-static {v3, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 165
    array-length v3, v2

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 166
    .local v3, "d":[B
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-object v3

    .line 136
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

.method public getType()Ljxl/CellType;
    .locals 1

    .line 122
    sget-object v0, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    return-object v0
.end method
