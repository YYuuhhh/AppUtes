.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;
.super Ljava/lang/Object;
.source "RFC2965SpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# instance fields
.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 1
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)V
    .locals 0
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .param p2, "oneHeader"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 61
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 6
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_1

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    const/16 v2, 0x9

    new-array v2, v2, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v3, 0x0

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 79
    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 88
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method
