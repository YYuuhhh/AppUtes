.class public Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreSpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 1
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    return-object v0
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 1
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    return-object v0
.end method
