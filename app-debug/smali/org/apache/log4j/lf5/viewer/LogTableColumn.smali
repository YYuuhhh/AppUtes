.class public Lorg/apache/log4j/lf5/viewer/LogTableColumn;
.super Ljava/lang/Object;
.source "LogTableColumn.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field private static _log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field private static _logTableColumnMap:Ljava/util/Map;


# instance fields
.field protected _label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 35
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Date"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 36
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Thread"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 37
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v3, "Message #"

    invoke-direct {v2, v3}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 38
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v4, "Level"

    invoke-direct {v3, v4}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 39
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v5, "NDC"

    invoke-direct {v4, v5}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 40
    new-instance v5, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v6, "Category"

    invoke-direct {v5, v6}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 41
    new-instance v6, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v7, "Message"

    invoke-direct {v6, v7}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 42
    new-instance v7, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v8, "Location"

    invoke-direct {v7, v8}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 43
    new-instance v8, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v9, "Thrown"

    invoke-direct {v8, v9}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 61
    const/16 v9, 0x9

    new-array v9, v9, [Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 35
    .end local v0    # "i":I
    return-void

    .line 67
    .restart local v0    # "i":I
    :cond_0
    sget-object v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v3, v3, v0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getLogTableColumnArray()[Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .locals 1

    .line 143
    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    return-object v0
.end method

.method public static getLogTableColumns()Ljava/util/List;
    .locals 1

    .line 139
    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .locals 4
    .param p0, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "tableColumn":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 100
    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    .line 109
    return-object v0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v1, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while trying to parse ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") into"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v2, " a LogTableColumn."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "equals":Z
    instance-of v1, p1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 123
    :cond_0
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-object v0
.end method
