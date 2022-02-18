.class public Ljxl/read/biff/ButtonPropertySetRecord;
.super Ljxl/biff/RecordData;
.source "ButtonPropertySetRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/ButtonPropertySetRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 45
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljxl/read/biff/ButtonPropertySetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method
