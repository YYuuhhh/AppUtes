.class public Lcz/msebera/android/httpclient/entity/mime/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcz/msebera/android/httpclient/entity/mime/MinimalField;",
        ">;"
    }
.end annotation


# instance fields
.field private final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/MinimalField;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V
    .locals 3
    .param p1, "field"    # Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 54
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 59
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    if-nez v1, :cond_1

    .line 60
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 61
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 73
    return-object v0

    .line 75
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 77
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    return-object v0

    .line 80
    :cond_1
    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation

    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 89
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 90
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcz/msebera/android/httpclient/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeFields(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 102
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 103
    :cond_2
    :goto_0
    return v0
.end method

.method public setField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V
    .locals 8
    .param p1, "field"    # Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 110
    if-nez p1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 115
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v2, -0x1

    .line 122
    .local v2, "firstOccurrence":I
    const/4 v3, 0x0

    .line 123
    .local v3, "index":I
    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 125
    .local v5, "f":Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 127
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 128
    move v2, v3

    .line 123
    .end local v5    # "f":Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    :cond_3
    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v4, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    return-void

    .line 116
    .end local v2    # "firstOccurrence":I
    .end local v3    # "index":I
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/Header;->fields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
