.class final Lcom/google/firebase/auth/zzk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

.field final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/zzk;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzk;->zza:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/zzk;->zza:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    iget-object v1, p0, Lcom/google/firebase/auth/zzk;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    .line 1
    invoke-interface {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;->onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
