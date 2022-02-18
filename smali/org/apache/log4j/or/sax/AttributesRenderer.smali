.class public Lorg/apache/log4j/or/sax/AttributesRenderer;
.super Ljava/lang/Object;
.source "AttributesRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lorg/xml/sax/Attributes;

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    move-object v1, p1

    check-cast v1, Lorg/xml/sax/Attributes;

    .line 43
    .local v1, "a":Lorg/xml/sax/Attributes;
    invoke-interface {v1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 44
    .local v2, "len":I
    const/4 v3, 0x1

    .line 45
    .local v3, "first":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 46
    :cond_0
    if-eqz v3, :cond_1

    .line 47
    const/4 v3, 0x0

    goto :goto_1

    .line 49
    :cond_1
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :goto_1
    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    .end local v1    # "a":Lorg/xml/sax/Attributes;
    .end local v2    # "len":I
    .end local v3    # "first":Z
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
