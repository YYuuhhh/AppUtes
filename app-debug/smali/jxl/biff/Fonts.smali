.class public Ljxl/biff/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"


# static fields
.field private static final numDefaultFonts:I = 0x4


# instance fields
.field private fonts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    .line 51
    return-void
.end method


# virtual methods
.method public addFont(Ljxl/biff/FontRecord;)V
    .locals 2
    .param p1, "f"    # Ljxl/biff/FontRecord;

    .line 63
    invoke-virtual {p1}, Ljxl/biff/FontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    .local v0, "pos":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 73
    :cond_0
    invoke-virtual {p1, v0}, Ljxl/biff/FontRecord;->initialize(I)V

    .line 74
    iget-object v1, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v0    # "pos":I
    :cond_1
    return-void
.end method

.method public getFont(I)Ljxl/biff/FontRecord;
    .locals 1
    .param p1, "index"    # I

    .line 88
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 90
    add-int/lit8 p1, p1, -0x1

    .line 93
    :cond_0
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/FontRecord;

    return-object v0
.end method

.method rationalize()Ljxl/biff/IndexMapping;
    .locals 12

    .line 121
    new-instance v0, Ljxl/biff/IndexMapping;

    iget-object v1, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 124
    .local v0, "mapping":Ljxl/biff/IndexMapping;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "newfonts":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 126
    .local v3, "fr":Ljxl/biff/FontRecord;
    const/4 v4, 0x0

    .line 129
    .local v4, "numremoved":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 131
    iget-object v6, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljxl/biff/FontRecord;

    .line 132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v6

    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 138
    .local v5, "it":Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 139
    .local v7, "fr2":Ljxl/biff/FontRecord;
    const/4 v8, 0x0

    .line 140
    .local v8, "duplicate":Z
    const/4 v9, 0x4

    .local v9, "i":I
    :goto_1
    iget-object v10, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 142
    iget-object v10, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    check-cast v3, Ljxl/biff/FontRecord;

    .line 145
    const/4 v8, 0x0

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 147
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v8, :cond_2

    .line 149
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Ljxl/biff/FontRecord;

    .line 150
    invoke-virtual {v3, v7}, Ljxl/biff/FontRecord;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 152
    const/4 v8, 0x1

    .line 153
    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v10

    invoke-virtual {v7}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v11

    invoke-virtual {v0, v11}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 159
    :cond_2
    if-nez v8, :cond_4

    .line 162
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v10

    sub-int/2addr v10, v4

    .line 164
    .local v10, "newindex":I
    if-le v10, v6, :cond_3

    move v11, v2

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    invoke-static {v11}, Ljxl/common/Assert;->verify(Z)V

    .line 165
    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v11

    invoke-virtual {v0, v11, v10}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 140
    .end local v10    # "newindex":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 170
    .end local v9    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    .end local v5    # "it":Ljava/util/Iterator;
    .local v2, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljxl/biff/FontRecord;

    .line 174
    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljxl/biff/FontRecord;->initialize(I)V

    goto :goto_4

    .line 177
    :cond_6
    iput-object v1, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    .line 179
    return-object v0
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "i":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 107
    .local v1, "font":Ljxl/biff/FontRecord;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljxl/biff/FontRecord;

    .line 110
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
