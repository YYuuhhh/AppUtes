.class final Lcom/google/android/gms/measurement/internal/zziu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjf;ZLcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zze:Lcom/google/android/gms/measurement/internal/zzjf;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zze:Lcom/google/android/gms/measurement/internal/zzjf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjf;->zzM(Lcom/google/android/gms/measurement/internal/zzjf;)Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zze:Lcom/google/android/gms/measurement/internal/zzjf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zze:Lcom/google/android/gms/measurement/internal/zzjf;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzas;

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zzk(Lcom/google/android/gms/measurement/internal/zzed;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zze:Lcom/google/android/gms/measurement/internal/zzjf;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjf;->zzN(Lcom/google/android/gms/measurement/internal/zzjf;)V

    return-void
.end method
