.class final Lcom/google/android/gms/internal/firebase-auth-api/zztg;
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
.field private final zza:Lcom/google/firebase/auth/UserProfileChangeRequest;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;-><init>(I)V

    .line 2
    const-string v0, "request cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/UserProfileChangeRequest;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "updateProfile"

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

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zztf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zztg;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zzf:Ljava/lang/Object;

    .line 1
    check-cast v0, Lcom/google/firebase/auth/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zzS(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)Lcom/google/firebase/auth/internal/zzx;

    move-result-object v2

    .line 1
    invoke-interface {v0, v1, v2}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwv;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zzj(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zztr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
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

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznz;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    .line 4
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zznz;Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V

    return-void
.end method
