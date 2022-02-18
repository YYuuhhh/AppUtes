.class public Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;
.super Ljava/lang/Object;
.source "DefaultCookieSpec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# instance fields
.field private final netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

.field private final obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

.field private final strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>([Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;)V
    .locals 0
    .param p1, "strict"    # Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
    .param p2, "obsoleteStrict"    # Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
    .param p3, "netscapeDraft"    # Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 65
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 66
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    .line 67
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 11
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    const/16 v1, 0x9

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    invoke-direct {v0, p2, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    new-array v1, v9, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v2, v1, v8

    invoke-direct {v0, p2, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    new-array v1, v8, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "EEE, dd-MMM-yy HH:mm:ss z"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    .line 96
    return-void
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .line 178
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    const-string v0, "List of cookies"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const v0, 0x7fffffff

    .line 180
    .local v0, "version":I
    const/4 v1, 0x1

    .line 181
    .local v1, "isSetCookie2":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 182
    .local v3, "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    instance-of v4, v3, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v4, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 185
    :cond_0
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 186
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    .line 188
    .end local v3    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    :cond_1
    goto :goto_0

    .line 189
    :cond_2
    if-lez v0, :cond_4

    .line 190
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 191
    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 192
    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 190
    :goto_1
    return-object v2

    .line 194
    :cond_4
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getVersion()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .line 166
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 169
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 170
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 171
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    return v0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
    .param p1, "header"    # Lcz/msebera/android/httpclient/Header;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 106
    const-string v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 109
    .local v0, "hElems":[Lcz/msebera/android/httpclient/HeaderElement;
    const/4 v1, 0x0

    .line 110
    .local v1, "versioned":Z
    const/4 v2, 0x0

    .line 111
    .local v2, "netscape":Z
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    .line 112
    .local v6, "hElem":Lcz/msebera/android/httpclient/HeaderElement;
    const-string/jumbo v7, "version"

    invoke-interface {v6, v7}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 113
    const/4 v1, 0x1

    .line 115
    :cond_0
    const-string v7, "expires"

    invoke-interface {v6, v7}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 116
    const/4 v2, 0x1

    .line 111
    .end local v6    # "hElem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_2
    if-nez v2, :cond_5

    if-nez v1, :cond_3

    goto :goto_2

    .line 142
    :cond_3
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Set-Cookie2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 143
    invoke-virtual {v3, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 144
    invoke-virtual {v3, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3

    .line 142
    :goto_1
    return-object v3

    .line 122
    :cond_5
    :goto_2
    sget-object v3, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 125
    .local v3, "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v5, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v5, :cond_6

    .line 126
    move-object v5, p1

    check-cast v5, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v5

    .line 127
    .local v5, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    new-instance v6, Lcz/msebera/android/httpclient/message/ParserCursor;

    move-object v7, p1

    check-cast v7, Lcz/msebera/android/httpclient/FormattedHeader;

    .line 128
    invoke-interface {v7}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v7

    .line 129
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .local v6, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    goto :goto_3

    .line 131
    .end local v5    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v6    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :cond_6
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "hValue":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 135
    new-instance v6, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 136
    .local v6, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v6, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 137
    new-instance v7, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    invoke-direct {v7, v4, v8}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    move-object v5, v6

    move-object v6, v7

    .line 139
    .local v5, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .local v6, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :goto_3
    const/4 v7, 0x1

    new-array v7, v7, [Lcz/msebera/android/httpclient/HeaderElement;

    invoke-virtual {v3, v5, v6}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    aput-object v8, v7, v4

    move-object v0, v7

    .line 140
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v4, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 133
    .end local v6    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    .local v5, "hValue":Ljava/lang/String;
    :cond_7
    new-instance v4, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v6, "Header value is null"

    invoke-direct {v4, v6}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 209
    const-string v0, "default"

    return-object v0
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 151
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 162
    :goto_0
    return-void
.end method
