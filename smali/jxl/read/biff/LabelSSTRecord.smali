.class Ljxl/read/biff/LabelSSTRecord;
.super Ljxl/read/biff/CellValue;
.source "LabelSSTRecord.java"

# interfaces
.implements Ljxl/LabelCell;


# instance fields
.field private index:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "stringTable"    # Ljxl/read/biff/SSTRecord;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "si"    # Ljxl/read/biff/SheetImpl;

    .line 53
    invoke-direct {p0, p1, p3, p4}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 54
    invoke-virtual {p0}, Ljxl/read/biff/LabelSSTRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 55
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

    iput v1, p0, Ljxl/read/biff/LabelSSTRecord;->index:I

    .line 56
    invoke-virtual {p2, v1}, Ljxl/read/biff/SSTRecord;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/LabelSSTRecord;->string:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ljxl/read/biff/LabelSSTRecord;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Ljxl/read/biff/LabelSSTRecord;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 86
    sget-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    return-object v0
.end method
