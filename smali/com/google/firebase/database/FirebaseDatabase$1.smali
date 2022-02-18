.class Lcom/google/firebase/database/FirebaseDatabase$1;
.super Ljava/lang/Object;
.source "FirebaseDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/FirebaseDatabase;->purgeOutstandingWrites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/FirebaseDatabase;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/FirebaseDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/FirebaseDatabase;

    .line 233
    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabase$1;->this$0:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase$1;->this$0:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-static {v0}, Lcom/google/firebase/database/FirebaseDatabase;->access$000(Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Repo;->purgeOutstandingWrites()V

    .line 237
    return-void
.end method
