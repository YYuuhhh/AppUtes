.class public Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException;
.super Ljava/lang/Exception;
.source "HttpCacheUpdateException.java"


# static fields
.field private static final serialVersionUID:J = 0xb6debcfdc7d692cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    return-void
.end method
