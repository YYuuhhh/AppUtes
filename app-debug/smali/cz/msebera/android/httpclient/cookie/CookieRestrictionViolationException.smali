.class public Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;
.super Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
.source "CookieRestrictionViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x664be3b3ef7da655L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
