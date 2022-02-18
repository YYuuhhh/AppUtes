.class Ljxl/read/biff/SharedFormulaRecord;
.super Ljava/lang/Object;
.source "SharedFormulaRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private firstCol:I

.field private firstRow:I

.field private formulas:Ljava/util/ArrayList;

.field private lastCol:I

.field private lastRow:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

.field private tokens:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Ljxl/read/biff/SharedFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/BaseSharedFormulaRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/read/biff/BaseSharedFormulaRecord;
    .param p3, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p5, "si"    # Ljxl/read/biff/SheetImpl;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p5, p0, Ljxl/read/biff/SharedFormulaRecord;->sheet:Ljxl/read/biff/SheetImpl;

    .line 106
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 108
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SharedFormulaRecord;->firstRow:I

    .line 109
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SharedFormulaRecord;->lastRow:I

    .line 110
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Ljxl/read/biff/SharedFormulaRecord;->firstCol:I

    .line 111
    const/4 v2, 0x5

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Ljxl/read/biff/SharedFormulaRecord;->lastCol:I

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    .line 115
    iput-object p2, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 117
    array-length v2, v0

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    .line 118
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-void
.end method


# virtual methods
.method public add(Ljxl/read/biff/BaseSharedFormulaRecord;)Z
    .locals 4
    .param p1, "fr"    # Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "added":Z
    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getRow()I

    move-result v1

    .line 132
    .local v1, "r":I
    iget v2, p0, Ljxl/read/biff/SharedFormulaRecord;->firstRow:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Ljxl/read/biff/SharedFormulaRecord;->lastRow:I

    if-gt v1, v2, :cond_0

    .line 134
    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getColumn()I

    move-result v2

    .line 135
    .local v2, "c":I
    iget v3, p0, Ljxl/read/biff/SharedFormulaRecord;->firstCol:I

    if-lt v2, v3, :cond_0

    iget v3, p0, Ljxl/read/biff/SharedFormulaRecord;->lastCol:I

    if-gt v2, v3, :cond_0

    .line 137
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v0, 0x1

    .line 143
    .end local v2    # "c":I
    :cond_0
    return v0
.end method

.method getFormulas(Ljxl/biff/FormattingRecords;Z)[Ljxl/Cell;
    .locals 12
    .param p1, "fr"    # Ljxl/biff/FormattingRecords;
    .param p2, "nf"    # Z

    .line 156
    iget-object v0, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/Cell;

    .line 160
    .local v0, "sfs":[Ljxl/Cell;
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Ljxl/read/biff/SharedFormulaRecord;->logger:Ljxl/common/Logger;

    const-string v3, "Shared formula template formula is null"

    invoke-virtual {v1, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 163
    new-array v1, v2, [Ljxl/Cell;

    return-object v1

    .line 166
    :cond_0
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    invoke-virtual {v1, v3}, Ljxl/read/biff/BaseSharedFormulaRecord;->setTokens([B)V

    .line 167
    const/4 v1, 0x0

    .line 170
    .local v1, "templateNumberFormat":Ljava/text/NumberFormat;
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    invoke-virtual {v3}, Ljxl/read/biff/BaseSharedFormulaRecord;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v3, v4, :cond_1

    .line 172
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    check-cast v3, Ljxl/read/biff/SharedNumberFormulaRecord;

    .line 174
    .local v3, "snfr":Ljxl/read/biff/SharedNumberFormulaRecord;
    invoke-virtual {v3}, Ljxl/read/biff/SharedNumberFormulaRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    .line 176
    iget-object v4, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    invoke-virtual {v4}, Ljxl/read/biff/BaseSharedFormulaRecord;->getXFIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    new-instance v10, Ljxl/read/biff/SharedDateFormulaRecord;

    iget-object v8, p0, Ljxl/read/biff/SharedFormulaRecord;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SharedNumberFormulaRecord;->getFilePos()I

    move-result v9

    move-object v4, v10

    move-object v5, v3

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Ljxl/read/biff/SharedDateFormulaRecord;-><init>(Ljxl/read/biff/SharedNumberFormulaRecord;Ljxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;I)V

    iput-object v10, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 180
    invoke-virtual {v3}, Ljxl/read/biff/SharedNumberFormulaRecord;->getTokens()[B

    move-result-object v4

    invoke-virtual {v10, v4}, Ljxl/read/biff/BaseSharedFormulaRecord;->setTokens([B)V

    .line 184
    .end local v3    # "snfr":Ljxl/read/biff/SharedNumberFormulaRecord;
    :cond_1
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    aput-object v3, v0, v2

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, "f":Ljxl/read/biff/BaseSharedFormulaRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 190
    iget-object v4, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 193
    invoke-virtual {v2}, Ljxl/read/biff/BaseSharedFormulaRecord;->getType()Ljxl/CellType;

    move-result-object v4

    sget-object v5, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v4, v5, :cond_2

    .line 195
    move-object v4, v2

    check-cast v4, Ljxl/read/biff/SharedNumberFormulaRecord;

    .line 197
    .local v4, "snfr":Ljxl/read/biff/SharedNumberFormulaRecord;
    invoke-virtual {v2}, Ljxl/read/biff/BaseSharedFormulaRecord;->getXFIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    new-instance v5, Ljxl/read/biff/SharedDateFormulaRecord;

    iget-object v10, p0, Ljxl/read/biff/SharedFormulaRecord;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v4}, Ljxl/read/biff/SharedNumberFormulaRecord;->getFilePos()I

    move-result v11

    move-object v6, v5

    move-object v7, v4

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v6 .. v11}, Ljxl/read/biff/SharedDateFormulaRecord;-><init>(Ljxl/read/biff/SharedNumberFormulaRecord;Ljxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;I)V

    move-object v2, v5

    .line 208
    .end local v4    # "snfr":Ljxl/read/biff/SharedNumberFormulaRecord;
    :cond_2
    iget-object v4, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    invoke-virtual {v2, v4}, Ljxl/read/biff/BaseSharedFormulaRecord;->setTokens([B)V

    .line 209
    add-int/lit8 v4, v3, 0x1

    aput-object v2, v0, v4

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method getTemplateFormula()Ljxl/read/biff/BaseSharedFormulaRecord;
    .locals 1

    .line 222
    iget-object v0, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    return-object v0
.end method
