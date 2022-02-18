.class public Ljxl/biff/NumFormatRecordsException;
.super Ljava/lang/Exception;
.source "NumFormatRecordsException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    const-string v0, "Internal error:  max number of FORMAT records exceeded"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
