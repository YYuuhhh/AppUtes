.class public final Lcom/google/android/gms/internal/measurement/zzml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmk;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzfh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzfh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzfh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzfh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzfh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfh<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzff;

    .line 1
    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzff;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "measurement.sdk.collection.enable_extend_user_property_size"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 3
    const-string v1, "measurement.sdk.collection.last_deep_link_referrer2"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzml;->zzb:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 4
    const-string v1, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzml;->zzc:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 5
    const-string v1, "measurement.sdk.collection.last_gclid_from_referrer2"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzml;->zzd:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 6
    const-string v1, "measurement.id.sdk.collection.last_deep_link_referrer2"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzff;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zze:Lcom/google/android/gms/internal/measurement/zzfh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zzb:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zzc:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zzd:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method