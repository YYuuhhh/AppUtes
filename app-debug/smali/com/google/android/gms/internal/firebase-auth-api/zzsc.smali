.class final Lcom/google/android/gms/internal/firebase-auth-api/zzsc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzvc;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvc<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zznb;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;-><init>(I)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "setFirebaseUIVersion"

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zztr;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsc;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zzj(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zztr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 1
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzuf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zzy(Lcom/google/android/gms/internal/firebase-auth-api/zznb;Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V

    return-void
.end method
