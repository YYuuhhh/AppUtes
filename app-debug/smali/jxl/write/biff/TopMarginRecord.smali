.class Ljxl/write/biff/TopMarginRecord;
.super Ljxl/write/biff/MarginRecord;
.source "TopMarginRecord.java"


# direct methods
.method constructor <init>(D)V
    .locals 1
    .param p1, "v"    # D

    .line 31
    sget-object v0, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/MarginRecord;-><init>(Ljxl/biff/Type;D)V

    .line 32
    return-void
.end method
