.class public Lcz/msebera/android/httpclient/impl/pool/BasicConnPool;
.super Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.source "BasicConnPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/AbstractConnPool<",
        "Lcz/msebera/android/httpclient/HttpHost;",
        "Lcz/msebera/android/httpclient/HttpClientConnection;",
        "Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 80
    new-instance v0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;

    sget-object v1, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    sget-object v2, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Lcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 3
    .param p1, "sconfig"    # Lcz/msebera/android/httpclient/config/SocketConfig;
    .param p2, "cconfig"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Lcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 3
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    new-instance v0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/pool/ConnFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnFactory<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "connFactory":Lcz/msebera/android/httpclient/pool/ConnFactory;, "Lcz/msebera/android/httpclient/pool/ConnFactory<Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpClientConnection;>;"
    const/4 v0, 0x2

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 59
    return-void
.end method


# virtual methods
.method protected createEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;
    .locals 3
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "conn"    # Lcz/msebera/android/httpclient/HttpClientConnection;

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;

    sget-object v1, Lcz/msebera/android/httpclient/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpClientConnection;)V

    return-object v0
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 0

    .line 51
    check-cast p1, Lcz/msebera/android/httpclient/HttpHost;

    check-cast p2, Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/pool/BasicConnPool;->createEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;

    move-result-object p1

    return-object p1
.end method

.method protected validate(Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;

    .line 92
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isStale()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic validate(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .locals 0

    .line 51
    check-cast p1, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/pool/BasicConnPool;->validate(Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;)Z

    move-result p1

    return p1
.end method
