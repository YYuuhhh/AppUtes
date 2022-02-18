.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
.super Ljava/lang/Object;
.source "CategoryPath.java"


# instance fields
.field protected _categoryElements:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    .line 57
    move-object v0, p1

    .line 59
    .local v0, "processedCategory":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    const-string v0, "Debug"

    .line 63
    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 64
    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, "st":Ljava/util/StringTokenizer;
    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    .end local v0    # "processedCategory":Ljava/lang/String;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    return-void

    .line 68
    .restart local v0    # "processedCategory":Ljava/lang/String;
    .restart local v1    # "st":Ljava/util/StringTokenizer;
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "element":Ljava/lang/String;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    invoke-direct {v3, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->addCategoryElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;)V

    goto :goto_0
.end method


# virtual methods
.method public addCategoryElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;)V
    .locals 1
    .param p1, "categoryElement"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    .line 108
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .locals 1
    .param p1, "index"    # I

    .line 115
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "empty":Z
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public removeAllCategoryElements()V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 102
    return-void
.end method

.method public size()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 83
    .local v0, "count":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 122
    .local v0, "out":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v2, "===========================\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v3, "CategoryPath:                   \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v3, "---------------------------\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v3, "\nCategoryPath:\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 130
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .end local v3    # "i":I
    goto :goto_1

    .line 131
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "i":I
    :cond_1
    const-string v3, "<<NONE>>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
