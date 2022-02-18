.class Ljxl/read/biff/RKRecord;
.super Ljxl/read/biff/CellValue;
.source "RKRecord.java"

# interfaces
.implements Ljxl/NumberCell;


# static fields
.field private static defaultFormat:Ljava/text/DecimalFormat;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private format:Ljava/text/NumberFormat;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Ljxl/read/biff/RKRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RKRecord;->logger:Ljxl/common/Logger;

    .line 55
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/RKRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "si"    # Ljxl/read/biff/SheetImpl;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 67
    invoke-virtual {p0}, Ljxl/read/biff/RKRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 68
    .local v0, "data":[B
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    const/16 v3, 0x8

    aget-byte v3, v0, v3

    const/16 v4, 0x9

    aget-byte v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    .line 69
    .local v1, "rknum":I
    invoke-static {v1}, Ljxl/read/biff/RKHelper;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Ljxl/read/biff/RKRecord;->value:D

    .line 72
    invoke-virtual {p0}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    .line 73
    if-nez v2, :cond_0

    .line 75
    sget-object v2, Ljxl/read/biff/RKRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object v2, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 3

    .line 96
    iget-object v0, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/RKRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 117
    iget-object v0, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 106
    sget-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 86
    iget-wide v0, p0, Ljxl/read/biff/RKRecord;->value:D

    return-wide v0
.end method
