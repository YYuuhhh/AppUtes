.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzhe;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaaa<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzhe;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzhd;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzy(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzhe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaai;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzE(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    return-object p0
.end method

.method public static zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzhd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzs()Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhd;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzhe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzhe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzb:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;Lcom/google/android/gms/internal/firebase-auth-api/zzgy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzb:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-object v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhd;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhc;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>()V

    return-object p1

    .line 0
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v2, "zzb"

    aput-object v2, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 2
    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
