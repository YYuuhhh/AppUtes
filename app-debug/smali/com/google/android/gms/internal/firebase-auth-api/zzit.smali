.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzit;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaaa<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzit;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzis;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzit;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzit;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzy(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzis;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzs()Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzit;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzit;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzit;Lcom/google/android/gms/internal/firebase-auth-api/zzie;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zze:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzit;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzf:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzit;Lcom/google/android/gms/internal/firebase-auth-api/zzji;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzf:I

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzis;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzis;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zziq;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzit;-><init>()V

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

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    .line 2
    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
