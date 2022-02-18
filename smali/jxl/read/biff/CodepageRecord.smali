.class Ljxl/read/biff/CodepageRecord;
.super Ljxl/biff/RecordData;
.source "CodepageRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private characterSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/CodepageRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CodepageRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 50
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 51
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/CodepageRecord;->characterSet:I

    .line 52
    return-void
.end method


# virtual methods
.method public getCharacterSet()I
    .locals 1

    .line 61
    iget v0, p0, Ljxl/read/biff/CodepageRecord;->characterSet:I

    return v0
.end method
