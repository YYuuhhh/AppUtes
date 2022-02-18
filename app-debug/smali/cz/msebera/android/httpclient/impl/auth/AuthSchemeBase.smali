.class public abstract Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;


# instance fields
.field protected challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .param p1, "challengeState"    # Lcz/msebera/android/httpclient/auth/ChallengeState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    .line 71
    return-void
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .param p1, "credentials"    # Lcz/msebera/android/httpclient/auth/Credentials;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeState()Lcz/msebera/android/httpclient/auth/ChallengeState;
    .locals 1

    .line 156
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    return-object v0
.end method

.method public isProxy()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-eqz v0, :cond_0

    sget-object v1, Lcz/msebera/android/httpclient/auth/ChallengeState;->PROXY:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lcz/msebera/android/httpclient/Header;)V
    .locals 9
    .param p1, "header"    # Lcz/msebera/android/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 89
    const-string v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "authheader":Ljava/lang/String;
    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcz/msebera/android/httpclient/auth/ChallengeState;->TARGET:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "Proxy-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    sget-object v1, Lcz/msebera/android/httpclient/auth/ChallengeState;->PROXY:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    .line 101
    :goto_0
    instance-of v1, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, p1

    check-cast v1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    .line 103
    .local v1, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    move-object v2, p1

    check-cast v2, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v2

    .local v2, "pos":I
    goto :goto_1

    .line 105
    .end local v1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v2    # "pos":I
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 109
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 110
    .local v2, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 111
    const/4 v3, 0x0

    move-object v1, v2

    move v2, v3

    .line 113
    .local v1, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_2
    move v3, v2

    .line 117
    .local v3, "beginIndex":I
    :goto_2
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :cond_3
    move v4, v2

    .line 121
    .local v4, "endIndex":I
    invoke-virtual {v1, v3, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 126
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-virtual {p0, v1, v2, v6}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    .line 127
    return-void

    .line 123
    :cond_4
    new-instance v6, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid scheme identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 107
    .end local v2    # "pos":I
    .end local v3    # "beginIndex":I
    .end local v4    # "endIndex":I
    .end local v5    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    :cond_5
    new-instance v2, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v3, "Header value is null"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v1    # "s":Ljava/lang/String;
    :cond_6
    new-instance v1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected header name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
