.class public Lcom/google/firebase/database/core/ChildEventRegistration;
.super Lcom/google/firebase/database/core/EventRegistration;
.source "ChildEventRegistration.java"


# instance fields
.field private final eventListener:Lcom/google/firebase/database/ChildEventListener;

.field private final repo:Lcom/google/firebase/database/core/Repo;

.field private final spec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0
    .param p1, "repo"    # Lcom/google/firebase/database/core/Repo;
    .param p2, "eventListener"    # Lcom/google/firebase/database/ChildEventListener;
    .param p3, "spec"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/database/core/EventRegistration;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    .line 38
    iput-object p3, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 39
    return-void
.end method


# virtual methods
.method public clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;
    .locals 3
    .param p1, "newQuery"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 102
    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;
    .locals 5
    .param p1, "change"    # Lcom/google/firebase/database/core/view/Change;
    .param p2, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 64
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    .line 65
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 67
    .local v0, "ref":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    .line 68
    .local v1, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "prevName":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/google/firebase/database/core/view/DataEvent;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1, v2}, Lcom/google/firebase/database/core/view/DataEvent;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method

.method public fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    .line 98
    return-void
.end method

.method public fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V
    .locals 3
    .param p1, "eventData"    # Lcom/google/firebase/database/core/view/DataEvent;

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/database/core/ChildEventRegistration;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/google/firebase/database/core/ChildEventRegistration$1;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Event$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    .line 89
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    .line 83
    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    .line 80
    nop

    .line 93
    :goto_0
    return-void
.end method

.method public getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method getRepo()Lcom/google/firebase/database/core/Repo;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 57
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 58
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 59
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 107
    instance-of v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0
.end method

.method public respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/google/firebase/database/core/view/Event$EventType;

    .line 43
    sget-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "ChildEventRegistration"

    return-object v0
.end method
