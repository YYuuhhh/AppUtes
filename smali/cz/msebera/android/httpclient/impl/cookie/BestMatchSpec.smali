.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;
.source "BestMatchSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>([Ljava/lang/String;Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "best-match"

    return-object v0
.end method
