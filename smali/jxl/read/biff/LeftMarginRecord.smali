.class Ljxl/read/biff/LeftMarginRecord;
.super Ljxl/read/biff/MarginRecord;
.source "LeftMarginRecord.java"


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 1
    .param p1, "r"    # Ljxl/read/biff/Record;

    .line 36
    sget-object v0, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/MarginRecord;-><init>(Ljxl/biff/Type;Ljxl/read/biff/Record;)V

    .line 37
    return-void
.end method
