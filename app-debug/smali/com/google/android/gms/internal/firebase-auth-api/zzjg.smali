.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjg;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaaa<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzjg;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzjf;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzy(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzjg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaai;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzE(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzjg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzjg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzje;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;-><init>()V

    return-object p1

    .line 0
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v0, "zzb"

    aput-object v0, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 2
    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
