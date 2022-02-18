.class public Ljxl/read/biff/HeaderRecord;
.super Ljxl/biff/RecordData;
.source "HeaderRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/HeaderRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/HeaderRecord$Biff7;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private header:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-class v0, Ljxl/read/biff/HeaderRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/HeaderRecord;->logger:Ljxl/common/Logger;

    .line 48
    new-instance v0, Ljxl/read/biff/HeaderRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/HeaderRecord$Biff7;-><init>(Ljxl/read/biff/HeaderRecord$1;)V

    sput-object v0, Ljxl/read/biff/HeaderRecord;->biff7:Ljxl/read/biff/HeaderRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 59
    invoke-virtual {p0}, Ljxl/read/biff/HeaderRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 61
    .local v0, "data":[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 68
    .local v2, "chars":I
    const/4 v4, 0x2

    aget-byte v4, v0, v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 70
    .local v1, "unicode":Z
    :cond_1
    const/4 v3, 0x3

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v0, v2, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/HeaderRecord;->header:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v0, v2, v3, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/HeaderRecord;->header:Ljava/lang/String;

    .line 78
    :goto_0
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/HeaderRecord$Biff7;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "dummy"    # Ljxl/read/biff/HeaderRecord$Biff7;

    .line 89
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 90
    invoke-virtual {p0}, Ljxl/read/biff/HeaderRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 92
    .local v0, "data":[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 98
    .local v1, "chars":I
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/HeaderRecord;->header:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method getHeader()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Ljxl/read/biff/HeaderRecord;->header:Ljava/lang/String;

    return-object v0
.end method
