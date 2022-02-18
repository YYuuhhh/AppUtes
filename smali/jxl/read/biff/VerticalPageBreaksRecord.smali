.class Ljxl/read/biff/VerticalPageBreaksRecord;
.super Ljxl/biff/RecordData;
.source "VerticalPageBreaksRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;


# instance fields
.field private columnBreaks:[I

.field private final logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;-><init>(Ljxl/read/biff/VerticalPageBreaksRecord$1;)V

    sput-object v0, Ljxl/read/biff/VerticalPageBreaksRecord;->biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 7
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 35
    const-class v0, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->logger:Ljxl/common/Logger;

    .line 58
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 60
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 61
    .local v1, "numbreaks":I
    const/4 v2, 0x2

    .line 62
    .local v2, "pos":I
    new-array v3, v1, [I

    iput-object v3, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    .line 64
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 66
    iget-object v4, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    aget-byte v5, v0, v2

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    invoke-static {v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    aput v5, v4, v3

    .line 67
    add-int/lit8 v2, v2, 0x6

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;)V
    .locals 7
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "biff7"    # Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    .line 79
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 35
    const-class v0, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->logger:Ljxl/common/Logger;

    .line 81
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 82
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 83
    .local v1, "numbreaks":I
    const/4 v2, 0x2

    .line 84
    .local v2, "pos":I
    new-array v3, v1, [I

    iput-object v3, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    .line 85
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 87
    iget-object v4, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    aget-byte v5, v0, v2

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    invoke-static {v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    aput v5, v4, v3

    .line 88
    add-int/lit8 v2, v2, 0x2

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnBreaks()[I
    .locals 1

    .line 99
    iget-object v0, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    return-object v0
.end method
