.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/TreeModelAdapter;
.super Ljava/lang/Object;
.source "TreeModelAdapter.java"

# interfaces
.implements Ljavax/swing/event/TreeModelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public treeNodesChanged(Ljavax/swing/event/TreeModelEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/TreeModelEvent;

    .line 51
    return-void
.end method

.method public treeNodesInserted(Ljavax/swing/event/TreeModelEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/TreeModelEvent;

    .line 54
    return-void
.end method

.method public treeNodesRemoved(Ljavax/swing/event/TreeModelEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/TreeModelEvent;

    .line 57
    return-void
.end method

.method public treeStructureChanged(Ljavax/swing/event/TreeModelEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/TreeModelEvent;

    .line 60
    return-void
.end method
