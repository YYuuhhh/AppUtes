.class final Lcom/google/android/gms/dynamite/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;-><init>()V

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjg:I

    .line 4
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjg:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjh:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjh:I

    .line 7
    :goto_0
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjg:I

    if-nez p1, :cond_1

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjh:I

    if-nez p1, :cond_1

    .line 8
    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzji:I

    goto :goto_1

    .line 9
    :cond_1
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjg:I

    iget p2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzjh:I

    if-lt p1, p2, :cond_2

    .line 10
    const/4 p1, -0x1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzji:I

    goto :goto_1

    .line 11
    :cond_2
    iput v3, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zzji:I

    .line 12
    :goto_1
    return-object v0
.end method
