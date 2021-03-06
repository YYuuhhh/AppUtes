.class public Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
.super Ljava/lang/Object;
.source "HttpProcessorBuilder.java"


# instance fields
.field private requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    .line 44
    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;-><init>()V

    return-object v0
.end method

.method private getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 55
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object v0
.end method

.method private getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 62
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 82
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 122
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 102
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAllLast([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 142
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAllLast([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addAllFirst([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 86
    if-nez p1, :cond_0

    .line 87
    return-object p0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 90
    return-object p0
.end method

.method public varargs addAllFirst([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 126
    if-nez p1, :cond_0

    .line 127
    return-object p0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 130
    return-object p0
.end method

.method public varargs addAllLast([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 94
    if-nez p1, :cond_0

    .line 95
    return-object p0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 98
    return-object p0
.end method

.method public varargs addAllLast([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 134
    if-nez p1, :cond_0

    .line 135
    return-object p0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 138
    return-object p0
.end method

.method public addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 66
    if-nez p1, :cond_0

    .line 67
    return-object p0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 70
    return-object p0
.end method

.method public addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 106
    if-nez p1, :cond_0

    .line 107
    return-object p0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 110
    return-object p0
.end method

.method public addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-object p0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 78
    return-object p0
.end method

.method public addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1
    .param p1, "e"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 114
    if-nez p1, :cond_0

    .line 115
    return-object p0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 118
    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .locals 4

    .line 146
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 146
    return-object v0
.end method
