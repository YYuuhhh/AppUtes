.class final Lcom/google/android/gms/common/api/internal/zau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabs;


# instance fields
.field private final synthetic zaet:Lcom/google/android/gms/common/api/internal/zaq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zaq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/api/internal/zat;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zau;-><init>(Lcom/google/android/gms/common/api/internal/zaq;)V

    return-void
.end method


# virtual methods
.method public final zab(IZ)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zac(Lcom/google/android/gms/common/api/internal/zaq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;Z)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;Z)Z

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zaq;->zaf(Lcom/google/android/gms/common/api/internal/zaq;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabe;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zab(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/api/internal/zaq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/api/internal/zaq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zau;->zaet:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
