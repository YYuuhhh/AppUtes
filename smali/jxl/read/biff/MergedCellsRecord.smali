.class public Ljxl/read/biff/MergedCellsRecord;
.super Ljxl/biff/RecordData;
.source "MergedCellsRecord.java"


# instance fields
.field private ranges:[Ljxl/Range;


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;Ljxl/Sheet;)V
    .locals 17
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "s"    # Ljxl/Sheet;

    .line 46
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/MergedCellsRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    .line 50
    .local v1, "data":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 52
    .local v2, "numRanges":I
    new-array v3, v2, [Ljxl/Range;

    iput-object v3, v0, Ljxl/read/biff/MergedCellsRecord;->ranges:[Ljxl/Range;

    .line 54
    const/4 v3, 0x2

    .line 55
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 56
    .local v4, "firstRow":I
    const/4 v5, 0x0

    .line 57
    .local v5, "lastRow":I
    const/4 v6, 0x0

    .line 58
    .local v6, "firstCol":I
    const/4 v7, 0x0

    .line 60
    .local v7, "lastCol":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_0

    .line 62
    aget-byte v9, v1, v3

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, v1, v10

    invoke-static {v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 63
    add-int/lit8 v9, v3, 0x2

    aget-byte v9, v1, v9

    add-int/lit8 v10, v3, 0x3

    aget-byte v10, v1, v10

    invoke-static {v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 64
    add-int/lit8 v9, v3, 0x4

    aget-byte v9, v1, v9

    add-int/lit8 v10, v3, 0x5

    aget-byte v10, v1, v10

    invoke-static {v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    .line 65
    add-int/lit8 v9, v3, 0x6

    aget-byte v9, v1, v9

    add-int/lit8 v10, v3, 0x7

    aget-byte v10, v1, v10

    invoke-static {v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    .line 67
    iget-object v9, v0, Ljxl/read/biff/MergedCellsRecord;->ranges:[Ljxl/Range;

    new-instance v10, Ljxl/biff/SheetRangeImpl;

    move-object v11, v10

    move-object/from16 v12, p2

    move v13, v6

    move v14, v4

    move v15, v7

    move/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    aput-object v10, v9, v8

    .line 70
    add-int/lit8 v3, v3, 0x8

    .line 60
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 72
    .end local v8    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getRanges()[Ljxl/Range;
    .locals 1

    .line 81
    iget-object v0, p0, Ljxl/read/biff/MergedCellsRecord;->ranges:[Ljxl/Range;

    return-object v0
.end method
