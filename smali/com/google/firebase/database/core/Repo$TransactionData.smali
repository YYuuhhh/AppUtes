.class Lcom/google/firebase/database/core/Repo$TransactionData;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/database/core/Repo$TransactionData;",
        ">;"
    }
.end annotation


# instance fields
.field private abortReason:Lcom/google/firebase/database/DatabaseError;

.field private applyLocally:Z

.field private currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

.field private currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

.field private currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

.field private currentWriteId:J

.field private handler:Lcom/google/firebase/database/Transaction$Handler;

.field private order:J

.field private outstandingListener:Lcom/google/firebase/database/ValueEventListener;

.field private path:Lcom/google/firebase/database/core/Path;

.field private retryCount:I

.field private status:Lcom/google/firebase/database/core/Repo$TransactionStatus;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJ)V
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "handler"    # Lcom/google/firebase/database/Transaction$Handler;
    .param p3, "outstandingListener"    # Lcom/google/firebase/database/ValueEventListener;
    .param p4, "status"    # Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .param p5, "applyLocally"    # Z
    .param p6, "order"    # J

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->path:Lcom/google/firebase/database/core/Path;

    .line 838
    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->handler:Lcom/google/firebase/database/Transaction$Handler;

    .line 839
    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->outstandingListener:Lcom/google/firebase/database/ValueEventListener;

    .line 840
    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 841
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    .line 842
    iput-boolean p5, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->applyLocally:Z

    .line 843
    iput-wide p6, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->order:J

    .line 844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;

    .line 845
    iput-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

    .line 846
    iput-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

    .line 847
    iput-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

    .line 848
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJLcom/google/firebase/database/core/Repo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/database/core/Path;
    .param p2, "x1"    # Lcom/google/firebase/database/Transaction$Handler;
    .param p3, "x2"    # Lcom/google/firebase/database/ValueEventListener;
    .param p4, "x3"    # Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .param p5, "x4"    # Z
    .param p6, "x5"    # J
    .param p8, "x6"    # Lcom/google/firebase/database/core/Repo$1;

    .line 816
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/database/core/Repo$TransactionData;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/google/firebase/database/snapshot/Node;

    .line 816
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/google/firebase/database/snapshot/Node;

    .line 816
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/google/firebase/database/snapshot/Node;

    .line 816
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 816
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentWriteId:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/google/firebase/database/core/Repo$TransactionData;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;
    .param p1, "x1"    # J

    .line 816
    iput-wide p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentWriteId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/google/firebase/database/core/Repo$TransactionData;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/Transaction$Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->handler:Lcom/google/firebase/database/Transaction$Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->outstandingListener:Lcom/google/firebase/database/ValueEventListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/DatabaseError;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/google/firebase/database/DatabaseError;

    .line 816
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/firebase/database/core/Repo$TransactionData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 816
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->applyLocally:Z

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/core/Repo$TransactionData;)I
    .locals 5
    .param p1, "o"    # Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 852
    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->order:J

    iget-wide v2, p1, Lcom/google/firebase/database/core/Repo$TransactionData;->order:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 853
    const/4 v0, -0x1

    return v0

    .line 854
    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 855
    const/4 v0, 0x0

    return v0

    .line 857
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 816
    check-cast p1, Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/Repo$TransactionData;->compareTo(Lcom/google/firebase/database/core/Repo$TransactionData;)I

    move-result p1

    return p1
.end method
