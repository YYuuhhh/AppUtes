.class public abstract Ljxl/read/biff/CellValue;
.super Ljxl/biff/RecordData;
.source "CellValue.java"

# interfaces
.implements Ljxl/Cell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private features:Ljxl/CellFeatures;

.field private format:Ljxl/biff/XFRecord;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/read/biff/CellValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CellValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 4
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "si"    # Ljxl/read/biff/SheetImpl;

    .line 93
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 94
    invoke-virtual {p0}, Ljxl/read/biff/CellValue;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 95
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/CellValue;->row:I

    .line 96
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/CellValue;->column:I

    .line 97
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    .line 98
    iput-object p3, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    .line 99
    iput-object p2, p0, Ljxl/read/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 100
    iput-boolean v1, p0, Ljxl/read/biff/CellValue;->initialized:Z

    .line 101
    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 2

    .line 142
    iget-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Ljxl/read/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    .line 148
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/CellValue;->format:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public final getColumn()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/read/biff/CellValue;->column:I

    return v0
.end method

.method public final getRow()I
    .locals 1

    .line 110
    iget v0, p0, Ljxl/read/biff/CellValue;->row:I

    return v0
.end method

.method protected getSheet()Ljxl/read/biff/SheetImpl;
    .locals 1

    .line 182
    iget-object v0, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    return-object v0
.end method

.method public final getXFIndex()I
    .locals 1

    .line 131
    iget v0, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    return v0
.end method

.method public isHidden()Z
    .locals 4

    .line 158
    iget-object v0, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    iget v1, p0, Ljxl/read/biff/CellValue;->column:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    .line 160
    .local v0, "cir":Ljxl/read/biff/ColumnInfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    return v1

    .line 165
    :cond_1
    iget-object v2, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    iget v3, p0, Ljxl/read/biff/CellValue;->row:I

    invoke-virtual {v2, v3}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object v2

    .line 167
    .local v2, "rr":Ljxl/read/biff/RowRecord;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    :cond_2
    return v1

    .line 172
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .locals 2
    .param p1, "cf"    # Ljxl/CellFeatures;

    .line 202
    iget-object v0, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Ljxl/read/biff/CellValue;->logger:Ljxl/common/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 207
    :cond_0
    iput-object p1, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    .line 208
    return-void
.end method
