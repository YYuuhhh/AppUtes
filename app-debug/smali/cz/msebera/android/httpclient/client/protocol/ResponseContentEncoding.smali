.class public Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# static fields
.field public static final UNCOMPRESSED:Ljava/lang/String; = "http.client.response.uncompressed"


# instance fields
.field private final decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreUnknown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "decoderRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;Z)V
    .locals 3
    .param p2, "ignoreUnknown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;Z)V"
        }
    .end annotation

    .line 69
    .local p1, "decoderRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    .line 72
    invoke-static {}, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->getInstance()Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    .line 73
    invoke-static {}, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->getInstance()Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    move-result-object v1

    const-string/jumbo v2, "x-gzip"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    .line 74
    invoke-static {}, Lcz/msebera/android/httpclient/client/entity/DeflateInputStreamFactory;->getInstance()Lcz/msebera/android/httpclient/client/entity/DeflateInputStreamFactory;

    move-result-object v1

    const-string v2, "deflate"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 76
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->ignoreUnknown:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "ignoreUnknown"    # Z

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Z)V

    .line 84
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 12
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 111
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v1

    .line 112
    .local v1, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v2

    .line 115
    .local v2, "requestConfig":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isContentCompressionEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 116
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    .line 117
    .local v3, "ceheader":Lcz/msebera/android/httpclient/Header;
    if-eqz v3, :cond_3

    .line 118
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    .line 119
    .local v4, "codecs":[Lcz/msebera/android/httpclient/HeaderElement;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 120
    .local v7, "codec":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "codecname":Ljava/lang/String;
    iget-object v9, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    invoke-interface {v9, v8}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 122
    .local v9, "decoderFactory":Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;
    if-eqz v9, :cond_0

    .line 123
    new-instance v10, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 124
    const-string v10, "Content-Length"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 125
    const-string v10, "Content-Encoding"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 126
    const-string v10, "Content-MD5"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_0
    const-string v10, "identity"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->ignoreUnknown:Z

    if-eqz v10, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    new-instance v5, Lcz/msebera/android/httpclient/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported Content-Encoding: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    .end local v7    # "codec":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v8    # "codecname":Ljava/lang/String;
    .end local v9    # "decoderFactory":Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "ceheader":Lcz/msebera/android/httpclient/Header;
    .end local v4    # "codecs":[Lcz/msebera/android/httpclient/HeaderElement;
    :cond_3
    return-void
.end method
