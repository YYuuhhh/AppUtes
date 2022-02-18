.class Ljxl/read/biff/CalcModeRecord;
.super Ljxl/biff/RecordData;
.source "CalcModeRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private automatic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/CalcModeRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CalcModeRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 50
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 51
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 52
    .local v2, "mode":I
    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Ljxl/read/biff/CalcModeRecord;->automatic:Z

    .line 53
    return-void
.end method


# virtual methods
.method public isAutomatic()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Ljxl/read/biff/CalcModeRecord;->automatic:Z

    return v0
.end method
