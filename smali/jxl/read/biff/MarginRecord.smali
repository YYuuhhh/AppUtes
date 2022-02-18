.class abstract Ljxl/read/biff/MarginRecord;
.super Ljxl/biff/RecordData;
.source "MarginRecord.java"


# instance fields
.field private margin:D


# direct methods
.method protected constructor <init>(Ljxl/biff/Type;Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/biff/Type;
    .param p2, "r"    # Ljxl/read/biff/Record;

    .line 45
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 47
    invoke-virtual {p2}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 49
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide v1

    iput-wide v1, p0, Ljxl/read/biff/MarginRecord;->margin:D

    .line 50
    return-void
.end method


# virtual methods
.method getMargin()D
    .locals 2

    .line 59
    iget-wide v0, p0, Ljxl/read/biff/MarginRecord;->margin:D

    return-wide v0
.end method
