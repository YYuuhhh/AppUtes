.class public Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;
.super Ljava/lang/Object;
.source "DigestSchemeFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>(Ljava/nio/charset/Charset;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;->charset:Ljava/nio/charset/Charset;

    .line 58
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 2
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 1
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 66
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;-><init>()V

    return-object v0
.end method
