.class public Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;
.super Ljava/lang/Object;
.source "DefaultCookieSpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    }
.end annotation


# instance fields
.field private final compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 85
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 3
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 81
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 2
    .param p1, "compatibilityLevel"    # Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "compatibilityLevel"    # Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .param p3, "datepatterns"    # [Ljava/lang/String;
    .param p4, "oneHeader"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    .line 69
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 70
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    .line 71
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    .line 72
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 12
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_3

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/16 v2, 0x9

    new-array v2, v2, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 96
    invoke-static {v3, v6}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const/4 v3, 0x7

    new-instance v11, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v11, v2, v3

    const/16 v3, 0x8

    new-instance v11, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v11, v2, v3

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 104
    .local v0, "strict":Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    new-array v3, v10, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v10, v3, v4

    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v10, v3, v5

    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;-><init>()V

    iget-object v11, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 107
    invoke-static {v10, v11}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v10

    aput-object v10, v3, v6

    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v10, v3, v7

    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v10, v3, v8

    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v10, v3, v9

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 112
    .local v1, "obsoleteStrict":Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    new-array v3, v9, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 113
    invoke-static {v9, v10}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v9

    aput-object v9, v3, v4

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    sget-object v9, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    if-ne v4, v9, :cond_0

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$1;

    invoke-direct {v4, p0}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    :goto_0
    aput-object v4, v3, v5

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v4, v3, v6

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v5, "EEE, dd-MMM-yy HH:mm:ss z"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 128
    .local v2, "netscapeDraft":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;

    invoke-direct {v3, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 130
    .end local v0    # "strict":Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
    .end local v1    # "obsoleteStrict":Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
    .end local v2    # "netscapeDraft":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;
    :cond_2
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 132
    :cond_3
    :goto_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method
