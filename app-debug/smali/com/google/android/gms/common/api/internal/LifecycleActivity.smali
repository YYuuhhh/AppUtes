.class public Lcom/google/android/gms/common/api/internal/LifecycleActivity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# instance fields
.field private final zzbp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbp:Ljava/lang/Object;

    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method


# virtual methods
.method public asActivity()Landroid/app/Activity;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbp:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public asFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbp:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public asObject()Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbp:Ljava/lang/Object;

    return-object v0
.end method

.method public isChimera()Z
    .locals 1

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbp:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbp:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method
