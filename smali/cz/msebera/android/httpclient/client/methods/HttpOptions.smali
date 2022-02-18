.class public Lcz/msebera/android/httpclient/client/methods/HttpOptions;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "HttpOptions.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "OPTIONS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getAllowedMethods(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/util/Set;
    .locals 8
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    const-string v0, "Allow"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v0

    .line 87
    .local v0, "it":Lcz/msebera/android/httpclient/HeaderIterator;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v1, "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 90
    .local v2, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    .line 91
    .local v3, "elements":[Lcz/msebera/android/httpclient/HeaderElement;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 92
    .local v6, "element":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v6    # "element":Lcz/msebera/android/httpclient/HeaderElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 94
    .end local v2    # "header":Lcz/msebera/android/httpclient/Header;
    .end local v3    # "elements":[Lcz/msebera/android/httpclient/HeaderElement;
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    return-object v1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "OPTIONS"

    return-object v0
.end method
