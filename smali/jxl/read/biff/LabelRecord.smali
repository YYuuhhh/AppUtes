.class Ljxl/read/biff/LabelRecord;
.super Ljxl/read/biff/CellValue;
.source "LabelRecord.java"

# interfaces
.implements Ljxl/LabelCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/LabelRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/LabelRecord$Biff7;


# instance fields
.field private length:I

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljxl/read/biff/LabelRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/LabelRecord$Biff7;-><init>(Ljxl/read/biff/LabelRecord$1;)V

    sput-object v0, Ljxl/read/biff/LabelRecord;->biff7:Ljxl/read/biff/LabelRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 4
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "si"    # Ljxl/read/biff/SheetImpl;
    .param p4, "ws"    # Ljxl/WorkbookSettings;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 62
    invoke-virtual {p0}, Ljxl/read/biff/LabelRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 63
    .local v0, "data":[B
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/LabelRecord;->length:I

    .line 65
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/16 v3, 0x9

    if-nez v2, :cond_0

    .line 67
    invoke-static {v0, v1, v3, p4}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/LabelRecord;->string:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v0, v1, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/LabelRecord;->string:Ljava/lang/String;

    .line 73
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/LabelRecord$Biff7;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "si"    # Ljxl/read/biff/SheetImpl;
    .param p4, "ws"    # Ljxl/WorkbookSettings;
    .param p5, "dummy"    # Ljxl/read/biff/LabelRecord$Biff7;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 88
    invoke-virtual {p0}, Ljxl/read/biff/LabelRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 89
    .local v0, "data":[B
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/LabelRecord;->length:I

    .line 91
    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p4}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/LabelRecord;->string:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Ljxl/read/biff/LabelRecord;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Ljxl/read/biff/LabelRecord;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 121
    sget-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    return-object v0
.end method
