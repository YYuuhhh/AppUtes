.class Ljxl/read/biff/MulBlankCell;
.super Ljava/lang/Object;
.source "MulBlankCell.java"

# interfaces
.implements Ljxl/Cell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private cellFormat:Ljxl/format/CellFormat;

.field private column:I

.field private features:Ljxl/CellFeatures;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Ljxl/read/biff/MulBlankCell;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/MulBlankCell;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "c"    # I
    .param p3, "xfi"    # I
    .param p4, "fr"    # Ljxl/biff/FormattingRecords;
    .param p5, "si"    # Ljxl/read/biff/SheetImpl;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Ljxl/read/biff/MulBlankCell;->row:I

    .line 96
    iput p2, p0, Ljxl/read/biff/MulBlankCell;->column:I

    .line 97
    iput p3, p0, Ljxl/read/biff/MulBlankCell;->xfIndex:I

    .line 98
    iput-object p4, p0, Ljxl/read/biff/MulBlankCell;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 99
    iput-object p5, p0, Ljxl/read/biff/MulBlankCell;->sheet:Ljxl/read/biff/SheetImpl;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    .line 101
    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    .line 190
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 2

    .line 150
    iget-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/MulBlankCell;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/MulBlankCell;->cellFormat:Ljxl/format/CellFormat;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    .line 156
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->cellFormat:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public final getColumn()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/read/biff/MulBlankCell;->column:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, ""

    return-object v0
.end method

.method public final getRow()I
    .locals 1

    .line 110
    iget v0, p0, Ljxl/read/biff/MulBlankCell;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 140
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method

.method public isHidden()Z
    .locals 4

    .line 166
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->sheet:Ljxl/read/biff/SheetImpl;

    iget v1, p0, Ljxl/read/biff/MulBlankCell;->column:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    .line 168
    .local v0, "cir":Ljxl/read/biff/ColumnInfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 170
    return v1

    .line 173
    :cond_0
    iget-object v2, p0, Ljxl/read/biff/MulBlankCell;->sheet:Ljxl/read/biff/SheetImpl;

    iget v3, p0, Ljxl/read/biff/MulBlankCell;->row:I

    invoke-virtual {v2, v3}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object v2

    .line 175
    .local v2, "rr":Ljxl/read/biff/RowRecord;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    :cond_1
    return v1

    .line 180
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .locals 2
    .param p1, "cf"    # Ljxl/CellFeatures;

    .line 200
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Ljxl/read/biff/MulBlankCell;->logger:Ljxl/common/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 205
    :cond_0
    iput-object p1, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    .line 206
    return-void
.end method
