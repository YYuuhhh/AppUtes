.class final Lcom/google/android/gms/internal/measurement/zzbj;
.super Lcom/google/android/gms/internal/measurement/zzv;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbj;->zza:Lcom/google/android/gms/measurement/internal/zzgq;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj;->zza:Lcom/google/android/gms/measurement/internal/zzgq;

    .line 1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgq;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj;->zza:Lcom/google/android/gms/measurement/internal/zzgq;

    .line 1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
