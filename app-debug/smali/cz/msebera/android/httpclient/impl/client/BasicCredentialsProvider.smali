.class public Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/CredentialsProvider;


# instance fields
.field private final credMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcz/msebera/android/httpclient/auth/AuthScope;",
            "Lcz/msebera/android/httpclient/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    return-void
.end method

.method private static matchCredentials(Ljava/util/Map;Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;
    .locals 6
    .param p1, "authscope"    # Lcz/msebera/android/httpclient/auth/AuthScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcz/msebera/android/httpclient/auth/AuthScope;",
            "Lcz/msebera/android/httpclient/auth/Credentials;",
            ">;",
            "Lcz/msebera/android/httpclient/auth/AuthScope;",
            ")",
            "Lcz/msebera/android/httpclient/auth/Credentials;"
        }
    .end annotation

    .line 77
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/Credentials;

    .line 78
    .local v0, "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    if-nez v0, :cond_2

    .line 81
    const/4 v1, -0x1

    .line 82
    .local v1, "bestMatchFactor":I
    const/4 v2, 0x0

    .line 83
    .local v2, "bestMatch":Lcz/msebera/android/httpclient/auth/AuthScope;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 84
    .local v4, "current":Lcz/msebera/android/httpclient/auth/AuthScope;
    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/auth/AuthScope;->match(Lcz/msebera/android/httpclient/auth/AuthScope;)I

    move-result v5

    .line 85
    .local v5, "factor":I
    if-le v5, v1, :cond_0

    .line 86
    move v1, v5

    .line 87
    move-object v2, v4

    .line 89
    .end local v4    # "current":Lcz/msebera/android/httpclient/auth/AuthScope;
    .end local v5    # "factor":I
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    if-eqz v2, :cond_2

    .line 91
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcz/msebera/android/httpclient/auth/Credentials;

    .line 94
    .end local v1    # "bestMatchFactor":I
    .end local v2    # "bestMatch":Lcz/msebera/android/httpclient/auth/AuthScope;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    return-void
.end method

.method public getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;
    .locals 1
    .param p1, "authscope"    # Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 99
    const-string v0, "Authentication scope"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->matchCredentials(Ljava/util/Map;Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .locals 1
    .param p1, "authscope"    # Lcz/msebera/android/httpclient/auth/AuthScope;
    .param p2, "credentials"    # Lcz/msebera/android/httpclient/auth/Credentials;

    .line 61
    const-string v0, "Authentication scope"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
