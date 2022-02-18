.class Ljxl/read/biff/NumberValue;
.super Ljava/lang/Object;
.source "NumberValue.java"

# interfaces
.implements Ljxl/NumberCell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static defaultFormat:Ljava/text/DecimalFormat;


# instance fields
.field private cellFormat:Ljxl/format/CellFormat;

.field private column:I

.field private features:Ljxl/CellFeatures;

.field private format:Ljava/text/NumberFormat;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private value:D

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/NumberValue;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(IIDILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "c"    # I
    .param p3, "val"    # D
    .param p5, "xfi"    # I
    .param p6, "fr"    # Ljxl/biff/FormattingRecords;
    .param p7, "si"    # Ljxl/read/biff/SheetImpl;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Ljxl/read/biff/NumberValue;->row:I

    .line 107
    iput p2, p0, Ljxl/read/biff/NumberValue;->column:I

    .line 108
    iput-wide p3, p0, Ljxl/read/biff/NumberValue;->value:D

    .line 109
    sget-object v0, Ljxl/read/biff/NumberValue;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object v0, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    .line 110
    iput p5, p0, Ljxl/read/biff/NumberValue;->xfIndex:I

    .line 111
    iput-object p6, p0, Ljxl/read/biff/NumberValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 112
    iput-object p7, p0, Ljxl/read/biff/NumberValue;->sheet:Ljxl/read/biff/SheetImpl;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/NumberValue;->initialized:Z

    .line 114
    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    .line 239
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 2

    .line 188
    iget-boolean v0, p0, Ljxl/read/biff/NumberValue;->initialized:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/NumberValue;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/NumberValue;->cellFormat:Ljxl/format/CellFormat;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/read/biff/NumberValue;->initialized:Z

    .line 194
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->cellFormat:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public final getColumn()I
    .locals 1

    .line 148
    iget v0, p0, Ljxl/read/biff/NumberValue;->column:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 3

    .line 168
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/NumberValue;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 229
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public final getRow()I
    .locals 1

    .line 138
    iget v0, p0, Ljxl/read/biff/NumberValue;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 178
    sget-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 158
    iget-wide v0, p0, Ljxl/read/biff/NumberValue;->value:D

    return-wide v0
.end method

.method public isHidden()Z
    .locals 4

    .line 204
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->sheet:Ljxl/read/biff/SheetImpl;

    iget v1, p0, Ljxl/read/biff/NumberValue;->column:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    .line 206
    .local v0, "cir":Ljxl/read/biff/ColumnInfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    iget-object v2, p0, Ljxl/read/biff/NumberValue;->sheet:Ljxl/read/biff/SheetImpl;

    iget v3, p0, Ljxl/read/biff/NumberValue;->row:I

    invoke-virtual {v2, v3}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object v2

    .line 213
    .local v2, "rr":Ljxl/read/biff/RowRecord;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    :cond_1
    return v1

    .line 218
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .locals 0
    .param p1, "cf"    # Ljxl/CellFeatures;

    .line 249
    iput-object p1, p0, Ljxl/read/biff/NumberValue;->features:Ljxl/CellFeatures;

    .line 250
    return-void
.end method

.method final setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "f"    # Ljava/text/NumberFormat;

    .line 125
    if-eqz p1, :cond_0

    .line 127
    iput-object p1, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    .line 129
    :cond_0
    return-void
.end method
