.class public Lcz/msebera/android/httpclient/message/BasicHttpResponse;
.super Lcz/msebera/android/httpclient/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponse;


# instance fields
.field private code:I

.field private entity:Lcz/msebera/android/httpclient/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private final reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

.field private reasonPhrase:Ljava/lang/String;

.field private statusline:Lcz/msebera/android/httpclient/StatusLine;

.field private ver:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Lcz/msebera/android/httpclient/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 112
    const-string v0, "Status code"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 115
    iput p2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 116
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    .line 118
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/StatusLine;)V
    .locals 1
    .param p1, "statusline"    # Lcz/msebera/android/httpclient/StatusLine;

    .line 89
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 90
    const-string v0, "Status line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/StatusLine;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 91
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 92
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 93
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    .line 95
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 1
    .param p1, "statusline"    # Lcz/msebera/android/httpclient/StatusLine;
    .param p2, "catalog"    # Lcz/msebera/android/httpclient/ReasonPhraseCatalog;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 72
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 73
    const-string v0, "Status line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/StatusLine;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 74
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 75
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 76
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    .line 78
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 79
    return-void
.end method


# virtual methods
.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .line 143
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 148
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .line 219
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 219
    :goto_0
    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getStatusLine()Lcz/msebera/android/httpclient/StatusLine;
    .locals 4

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    :goto_0
    iget v2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 137
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;

    .line 200
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 201
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 205
    const-string v0, "Locale"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 207
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 194
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setStatusCode(I)V
    .locals 1
    .param p1, "code"    # I

    .line 184
    const-string v0, "Status code"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 186
    iput p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 187
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;I)V
    .locals 1
    .param p1, "ver"    # Lcz/msebera/android/httpclient/ProtocolVersion;
    .param p2, "code"    # I

    .line 163
    const-string v0, "Status code"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 165
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 166
    iput p2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 167
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Lcz/msebera/android/httpclient/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 174
    const-string v0, "Status code"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 176
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 177
    iput p2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 178
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setStatusLine(Lcz/msebera/android/httpclient/StatusLine;)V
    .locals 1
    .param p1, "statusline"    # Lcz/msebera/android/httpclient/StatusLine;

    .line 154
    const-string v0, "Status line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/StatusLine;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->statusline:Lcz/msebera/android/httpclient/StatusLine;

    .line 155
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->ver:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 156
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->code:I

    .line 157
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
