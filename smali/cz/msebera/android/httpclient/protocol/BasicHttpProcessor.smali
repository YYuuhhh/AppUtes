.class public final Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpProcessor;
.implements Lcz/msebera/android/httpclient/protocol/HttpRequestInterceptorList;
.implements Lcz/msebera/android/httpclient/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final requestInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final responseInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 109
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 110
    return-void
.end method

.method public final addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .param p2, "index"    # I

    .line 113
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 114
    return-void
.end method

.method public final addInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 143
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 144
    return-void
.end method

.method public final addInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .param p2, "index"    # I

    .line 147
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;I)V

    .line 148
    return-void
.end method

.method public addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 62
    if-nez p1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .param p2, "index"    # I

    .line 71
    if-nez p1, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 136
    if-nez p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .param p2, "index"    # I

    .line 80
    if-nez p1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public clearInterceptors()V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 205
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 206
    return-void
.end method

.method public clearRequestInterceptors()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    return-void
.end method

.method public clearResponseInterceptors()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 254
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    .line 255
    .local v0, "clone":Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->copyInterceptors(Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;)V

    .line 256
    return-object v0
.end method

.method public copy()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    .locals 1

    .line 247
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;-><init>()V

    .line 248
    .local v0, "clone":Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->copyInterceptors(Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;)V

    .line 249
    return-object v0
.end method

.method protected copyInterceptors(Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;)V
    .locals 2
    .param p1, "target"    # Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    .line 235
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    return-void
.end method

.method public getRequestInterceptor(I)Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    .line 123
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    return-object v0

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestInterceptorCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseInterceptor(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    .line 157
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    return-object v0

    .line 158
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseInterceptorCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 214
    .local v1, "interceptor":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-interface {v1, p1, p2}, Lcz/msebera/android/httpclient/HttpRequestInterceptor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 215
    .end local v1    # "interceptor":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 2
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 224
    .local v1, "interceptor":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-interface {v1, p1, p2}, Lcz/msebera/android/httpclient/HttpResponseInterceptor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 225
    .end local v1    # "interceptor":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcz/msebera/android/httpclient/HttpRequestInterceptor;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcz/msebera/android/httpclient/HttpRequestInterceptor;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94
    .end local v1    # "request":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 95
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcz/msebera/android/httpclient/HttpRequestInterceptor;>;"
    :cond_1
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcz/msebera/android/httpclient/HttpResponseInterceptor;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcz/msebera/android/httpclient/HttpResponseInterceptor;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 105
    .end local v1    # "request":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 106
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcz/msebera/android/httpclient/HttpResponseInterceptor;>;"
    :cond_1
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 187
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v0, "Inteceptor list"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    if-eqz v2, :cond_0

    .line 192
    move-object v2, v1

    check-cast v2, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 194
    :cond_0
    instance-of v2, v1, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    if-eqz v2, :cond_1

    .line 195
    move-object v2, v1

    check-cast v2, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 197
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 198
    :cond_2
    return-void
.end method
