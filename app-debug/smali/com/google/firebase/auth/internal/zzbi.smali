.class public final Lcom/google/firebase/auth/internal/zzbi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private volatile zza:I

.field private final zzb:Lcom/google/firebase/auth/internal/zzam;

.field private volatile zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/zzam;

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzam;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zzc:Z

    iput p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zza:I

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/internal/zzbh;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzbh;-><init>(Lcom/google/firebase/auth/internal/zzbi;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/firebase/auth/internal/zzbi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zzc:Z

    return p1
.end method

.method static synthetic zze(Lcom/google/firebase/auth/internal/zzbi;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbi;->zzg()Z

    move-result p0

    return p0
.end method

.method static synthetic zzf(Lcom/google/firebase/auth/internal/zzbi;)Lcom/google/firebase/auth/internal/zzam;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    return-object p0
.end method

.method private final zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zza:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zzc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zza:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zza:I

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbi;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzam;->zza()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zza:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzam;->zzc()V

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zza:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzwv;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v0, 0xe10

    goto :goto_0

    .line 4
    :cond_1
    nop

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzh()J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/google/firebase/auth/internal/zzam;->zza:J

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/google/firebase/auth/internal/zzam;->zzb:J

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbi;->zzg()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzam;->zza()V

    :cond_2
    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbi;->zzb:Lcom/google/firebase/auth/internal/zzam;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzam;->zzc()V

    return-void
.end method
