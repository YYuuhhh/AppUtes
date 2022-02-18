.class public Ljxl/write/biff/DateFormatRecord;
.super Ljxl/biff/FormatRecord;
.source "DateFormatRecord.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    .line 39
    move-object v0, p1

    .line 41
    .local v0, "fs":Ljava/lang/String;
    const-string v1, "a"

    const-string v2, "AM/PM"

    invoke-virtual {p0, v0, v1, v2}, Ljxl/write/biff/DateFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "S"

    const-string v2, "0"

    invoke-virtual {p0, v0, v1, v2}, Ljxl/write/biff/DateFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Ljxl/write/biff/DateFormatRecord;->setFormatString(Ljava/lang/String;)V

    .line 45
    return-void
.end method
