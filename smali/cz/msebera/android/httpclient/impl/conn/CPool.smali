.class Lcz/msebera/android/httpclient/impl/conn/CPool;
.super Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.source "CPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/AbstractConnPool<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
        "Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final timeToLive:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/CPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p2, "defaultMaxPerRoute"    # I
    .param p3, "maxTotal"    # I
    .param p4, "timeToLive"    # J
    .param p6, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "connFactory":Lcz/msebera/android/httpclient/pool/ConnFactory;, "Lcz/msebera/android/httpclient/pool/ConnFactory<Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;>;"
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 50
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v1, Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 59
    iput-wide p4, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeToLive:J

    .line 60
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 61
    return-void
.end method


# virtual methods
.method protected createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .locals 10
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    .line 65
    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/CPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-wide v7, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeToLive:J

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeUnit:Ljava/util/concurrent/TimeUnit;

    move-object v2, v1

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v1
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 0

    .line 45
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    check-cast p2, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/CPool;->createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object p1

    return-object p1
.end method

.method protected enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "callback":Lcz/msebera/android/httpclient/pool/PoolEntryCallback;, "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;>;"
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V

    .line 77
    return-void
.end method

.method protected enumLeased(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "callback":Lcz/msebera/android/httpclient/pool/PoolEntryCallback;, "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;>;"
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->enumLeased(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V

    .line 82
    return-void
.end method

.method protected validate(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 71
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isStale()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic validate(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .locals 0

    .line 45
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->validate(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Z

    move-result p1

    return p1
.end method
