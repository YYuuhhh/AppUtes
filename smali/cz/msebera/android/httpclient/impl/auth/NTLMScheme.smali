.class public Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;
.super Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    }
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

.field private state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>(Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;)V
    .locals 1
    .param p1, "engine"    # Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 64
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>()V

    .line 65
    const-string v0, "NTLM engine"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 67
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 10
    .param p1, "credentials"    # Lcz/msebera/android/httpclient/auth/Credentials;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "ntcredentials":Lcz/msebera/android/httpclient/auth/NTCredentials;
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcz/msebera/android/httpclient/auth/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 132
    nop

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "response":Ljava/lang/String;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-eq v2, v3, :cond_3

    .line 136
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v2, v3, :cond_0

    .line 137
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 138
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-interface {v2, v3, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    sget-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v2, v3, :cond_2

    .line 142
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 143
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 142
    invoke-interface/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    sget-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 152
    :goto_0
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 153
    .local v2, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->isProxy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_1
    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 158
    :goto_1
    const-string v3, ": NTLM "

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 160
    new-instance v3, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v3, v2}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v3

    .line 150
    .end local v2    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    :cond_2
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_3
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v3, "NTLM authentication failed"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 104
    invoke-virtual {p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_0

    .line 107
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_2

    .line 116
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 119
    :cond_2
    :goto_0
    return-void

    .line 113
    :cond_3
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 114
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v1, "Out of sequence NTLM response message"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
