.class public Lcom/google/firebase/database/core/view/EventGenerator;
.super Ljava/lang/Object;
.source "EventGenerator.java"


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private final query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventGenerator;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 36
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/view/EventGenerator;)Lcom/google/firebase/database/snapshot/Index;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/view/EventGenerator;

    .line 29
    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method private changeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/google/firebase/database/core/view/EventGenerator$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/view/EventGenerator$1;-><init>(Lcom/google/firebase/database/core/view/EventGenerator;)V

    return-object v0
.end method

.method private generateEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/DataEvent;
    .locals 3
    .param p1, "change"    # Lcom/google/firebase/database/core/view/Change;
    .param p2, "registration"    # Lcom/google/firebase/database/core/EventRegistration;
    .param p3, "eventCache"    # Lcom/google/firebase/database/snapshot/IndexedNode;

    .line 64
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    nop

    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 69
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getPredecessorChildName(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 71
    .local v0, "prevChildKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/view/Change;->changeWithPrevName(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .local v1, "newChange":Lcom/google/firebase/database/core/view/Change;
    goto :goto_1

    .line 66
    .end local v0    # "prevChildKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v1    # "newChange":Lcom/google/firebase/database/core/view/Change;
    :cond_1
    :goto_0
    move-object v1, p1

    .line 73
    .restart local v1    # "newChange":Lcom/google/firebase/database/core/view/Change;
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {p2, v1, v0}, Lcom/google/firebase/database/core/EventRegistration;->createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;

    move-result-object v0

    return-object v0
.end method

.method private generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V
    .locals 6
    .param p2, "type"    # Lcom/google/firebase/database/core/view/Event$EventType;
    .param p5, "eventCache"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;",
            "Lcom/google/firebase/database/core/view/Event$EventType;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/DataEvent;>;"
    .local p3, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    .local p4, "eventRegistrations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "filteredChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/view/Change;

    .line 47
    .local v2, "change":Lcom/google/firebase/database/core/view/Change;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v2    # "change":Lcom/google/firebase/database/core/view/Change;
    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/view/Change;

    .line 53
    .restart local v2    # "change":Lcom/google/firebase/database/core/view/Change;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/EventRegistration;

    .line 54
    .local v4, "registration":Lcom/google/firebase/database/core/EventRegistration;
    invoke-virtual {v4, p2}, Lcom/google/firebase/database/core/EventRegistration;->respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    invoke-direct {p0, v2, v4, p5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/DataEvent;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v4    # "registration":Lcom/google/firebase/database/core/EventRegistration;
    :cond_2
    goto :goto_2

    .line 58
    .end local v2    # "change":Lcom/google/firebase/database/core/view/Change;
    :cond_3
    goto :goto_1

    .line 59
    :cond_4
    return-void
.end method


# virtual methods
.method public generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p2, "eventCache"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 78
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    .local p3, "eventRegistrations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/DataEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 81
    .local v7, "moves":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/view/Change;

    .line 82
    .local v2, "change":Lcom/google/firebase/database/core/view/Change;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 84
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/Change;->getOldIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 83
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/snapshot/Index;->indexedValueChanged(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/core/view/Change;->childMovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "change":Lcom/google/firebase/database/core/view/Change;
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    sget-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 91
    sget-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 93
    sget-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 95
    sget-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 97
    sget-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 99
    return-object v0
.end method
