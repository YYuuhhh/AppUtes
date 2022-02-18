.class public Lorg/apache/log4j/Hierarchy;
.super Ljava/lang/Object;
.source "Hierarchy.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;
.implements Lorg/apache/log4j/spi/RendererSupport;


# instance fields
.field private defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field emittedNoAppenderWarning:Z

.field emittedNoResourceBundleWarning:Z

.field ht:Ljava/util/Hashtable;

.field private listeners:Ljava/util/Vector;

.field rendererMap:Lorg/apache/log4j/or/RendererMap;

.field root:Lorg/apache/log4j/Logger;

.field threshold:Lorg/apache/log4j/Level;

.field thresholdInt:I


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 2
    .param p1, "root"    # Lorg/apache/log4j/Logger;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 77
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoResourceBundleWarning:Z

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    .line 88
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    .line 89
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    .line 91
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 92
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 93
    new-instance v0, Lorg/apache/log4j/or/RendererMap;

    invoke-direct {v0}, Lorg/apache/log4j/or/RendererMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    .line 94
    new-instance v0, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {v0}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 95
    return-void
.end method

.method private final updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V
    .locals 5
    .param p1, "pn"    # Lorg/apache/log4j/ProvisionNode;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;

    .line 540
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 542
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 553
    .end local v0    # "last":I
    .end local v1    # "i":I
    return-void

    .line 543
    .restart local v0    # "last":I
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Logger;

    .line 548
    .local v2, "l":Lorg/apache/log4j/Logger;
    iget-object v3, v2, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    iget-object v3, v3, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 549
    iget-object v3, v2, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    iput-object v3, p2, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 550
    iput-object p2, v2, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 542
    .end local v2    # "l":Lorg/apache/log4j/Logger;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final updateParents(Lorg/apache/log4j/Logger;)V
    .locals 11
    .param p1, "cat"    # Lorg/apache/log4j/Logger;

    .line 484
    iget-object v0, p1, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    .line 485
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 486
    .local v1, "length":I
    const/4 v2, 0x0

    .line 491
    .local v2, "parentFound":Z
    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x2e

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "substr":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v6, v5}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 497
    .local v6, "key":Lorg/apache/log4j/CategoryKey;
    iget-object v7, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 499
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 501
    new-instance v8, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {v8, p1}, Lorg/apache/log4j/ProvisionNode;-><init>(Lorg/apache/log4j/Logger;)V

    .line 502
    .local v8, "pn":Lorg/apache/log4j/ProvisionNode;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 503
    .end local v8    # "pn":Lorg/apache/log4j/ProvisionNode;
    :cond_1
    instance-of v8, v7, Lorg/apache/log4j/Category;

    if-eqz v8, :cond_3

    .line 504
    const/4 v2, 0x1

    .line 505
    move-object v4, v7

    check-cast v4, Lorg/apache/log4j/Category;

    iput-object v4, p1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 507
    nop

    .line 517
    .end local v5    # "substr":Ljava/lang/String;
    .end local v6    # "key":Lorg/apache/log4j/CategoryKey;
    .end local v7    # "o":Ljava/lang/Object;
    :goto_1
    if-nez v2, :cond_2

    .line 518
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    iput-object v4, p1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 519
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "parentFound":Z
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 508
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "length":I
    .restart local v2    # "parentFound":Z
    .restart local v3    # "i":I
    .restart local v5    # "substr":Ljava/lang/String;
    .restart local v6    # "key":Lorg/apache/log4j/CategoryKey;
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v8, v7, Lorg/apache/log4j/ProvisionNode;

    if-eqz v8, :cond_4

    .line 509
    move-object v8, v7

    check-cast v8, Lorg/apache/log4j/ProvisionNode;

    invoke-virtual {v8, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 511
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "unexpected object type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " in ht."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 513
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 492
    .end local v5    # "substr":Ljava/lang/String;
    .end local v6    # "key":Lorg/apache/log4j/CategoryKey;
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 107
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "Ignoring attempt to add an existent listener."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void
.end method

.method public addRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "classToRender"    # Ljava/lang/Class;
    .param p2, "or"    # Lorg/apache/log4j/or/ObjectRenderer;

    .line 102
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 103
    return-void
.end method

.method public clear()V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 127
    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .locals 2
    .param p1, "cat"    # Lorg/apache/log4j/Category;

    .line 132
    iget-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No appenders could be found for logger ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 135
    const-string v0, "Please initialize the log4j system properly."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 138
    :cond_0
    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v1, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/log4j/Logger;

    if-eqz v1, :cond_0

    .line 151
    move-object v1, v0

    check-cast v1, Lorg/apache/log4j/Logger;

    return-object v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 3
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .line 187
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 190
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 191
    .end local v2    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 192
    .restart local v2    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v2, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->addAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "size":I
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    :cond_1
    :goto_1
    return-void
.end method

.method fireRemoveAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 3
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .line 198
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 201
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 202
    .end local v2    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 203
    .restart local v2    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v2, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->removeAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "size":I
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    :cond_1
    :goto_1
    return-void
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .locals 4

    .line 304
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 306
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 307
    .local v1, "elems":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2

    .line 308
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 309
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_1
    goto :goto_0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/Hierarchy;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/log4j/spi/LoggerFactory;

    .line 261
    new-instance v0, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v0, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "key":Lorg/apache/log4j/CategoryKey;
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v1

    .line 268
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 269
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 270
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 271
    .local v2, "logger":Lorg/apache/log4j/Logger;
    :try_start_1
    invoke-virtual {v2, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 272
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0, v2}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 274
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 290
    .end local v3    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 269
    .end local v2    # "logger":Lorg/apache/log4j/Logger;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    move-object v4, v2

    .line 275
    .local v4, "logger":Lorg/apache/log4j/Logger;
    :try_start_2
    instance-of v5, v3, Lorg/apache/log4j/Logger;

    if-eqz v5, :cond_1

    .line 276
    move-object v2, v3

    check-cast v2, Lorg/apache/log4j/Logger;

    monitor-exit v1

    return-object v2

    .line 277
    :cond_1
    instance-of v5, v3, Lorg/apache/log4j/ProvisionNode;

    if-eqz v5, :cond_2

    .line 279
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    .end local v4    # "logger":Lorg/apache/log4j/Logger;
    .restart local v2    # "logger":Lorg/apache/log4j/Logger;
    :try_start_3
    invoke-virtual {v2, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 281
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-object v4, v3

    check-cast v4, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {p0, v4, v2}, Lorg/apache/log4j/Hierarchy;->updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V

    .line 283
    invoke-direct {p0, v2}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 284
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 288
    .end local v2    # "logger":Lorg/apache/log4j/Logger;
    .restart local v4    # "logger":Lorg/apache/log4j/Logger;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v2

    .line 290
    .end local v3    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    move-object v2, v4

    goto :goto_0

    .end local v4    # "logger":Lorg/apache/log4j/Logger;
    :catchall_2
    move-exception v3

    .restart local v2    # "logger":Lorg/apache/log4j/Logger;
    :goto_0
    monitor-exit v1

    throw v3
.end method

.method public getRendererMap()Lorg/apache/log4j/or/RendererMap;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isDisabled(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 351
    iget v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overrideAsNeeded(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .line 359
    const-string v0, "The Hiearchy.overrideAsNeeded method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public resetConfiguration()V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 380
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 381
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 385
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v0

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->shutdown()V

    .line 388
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v2

    .line 389
    .local v2, "cats":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    .end local v2    # "cats":Ljava/util/Enumeration;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0}, Lorg/apache/log4j/or/RendererMap;->clear()V

    .line 397
    return-void

    .line 390
    .restart local v2    # "cats":Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Logger;

    .line 391
    .local v3, "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v3, v1}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 392
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 393
    invoke-virtual {v3, v1}, Lorg/apache/log4j/Category;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    .end local v2    # "cats":Ljava/util/Enumeration;
    .end local v3    # "c":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDisableOverride(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .line 406
    const-string v0, "The Hiearchy.setDisableOverride method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "renderedClass"    # Ljava/lang/Class;
    .param p2, "renderer"    # Lorg/apache/log4j/or/ObjectRenderer;

    .line 416
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 417
    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 3
    .param p1, "levelStr"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    .line 163
    .local v0, "l":Lorg/apache/log4j/Level;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not convert ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] to Level."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 168
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :goto_0
    return-void
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .locals 1
    .param p1, "l"    # Lorg/apache/log4j/Level;

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget v0, p1, Lorg/apache/log4j/Priority;->level:I

    iput v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    .line 181
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    .line 183
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 438
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 441
    .local v0, "root":Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->closeNestedAppenders()V

    .line 443
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v1

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v2

    .line 445
    .local v2, "cats":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 452
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v3

    move-object v2, v3

    .line 453
    nop

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    .end local v2    # "cats":Ljava/util/Enumeration;
    monitor-exit v1

    .line 458
    .end local v0    # "root":Lorg/apache/log4j/Logger;
    return-void

    .line 454
    .restart local v0    # "root":Lorg/apache/log4j/Logger;
    .restart local v2    # "cats":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Logger;

    .line 455
    .local v3, "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v3}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    goto :goto_1

    .line 446
    .end local v3    # "c":Lorg/apache/log4j/Logger;
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Logger;

    .line 447
    .restart local v3    # "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v3}, Lorg/apache/log4j/Category;->closeNestedAppenders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    .end local v2    # "cats":Ljava/util/Enumeration;
    .end local v3    # "c":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
