.class public final Lcom/google/android/gms/internal/measurement/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkx;


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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzff;

    .line 1
    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzff;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "measurement.client.click_identifier_control.dev"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzky;->zza:Lcom/google/android/gms/internal/measurement/zzfh;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzky;->zza:Lcom/google/android/gms/internal/measurement/zzfh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
