.class public Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
.super Ljava/lang/Object;
.source "FormBodyPartBuilder.java"


# instance fields
.field private body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

.field private final header:Lcz/msebera/android/httpclient/entity/mime/Header;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 58
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;-><init>()V

    .line 59
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 61
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 1

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 50
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    return-object v0
.end method

.method private static encodeForHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "headerName"    # Ljava/lang/String;

    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 148
    .local v2, "x":C
    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 149
    :cond_1
    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .end local v2    # "x":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 78
    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 80
    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    .locals 7

    .line 96
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    const-string v1, "Name"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    const-string v1, "Content body"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    .line 99
    .local v0, "headerCopy":Lcz/msebera/android/httpclient/entity/mime/Header;
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->getFields()Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/MinimalField;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 101
    .local v3, "field":Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 102
    .end local v3    # "field":Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    goto :goto_0

    .line 103
    :cond_0
    const-string v2, "Content-Disposition"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v3

    if-nez v3, :cond_2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const-string v4, "form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    invoke-static {v4}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->encodeForHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 109
    const-string v5, "; filename=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->encodeForHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 115
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    :cond_2
    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v3

    if-nez v3, :cond_6

    .line 117
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    instance-of v4, v3, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    if-eqz v4, :cond_3

    .line 118
    check-cast v3, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->getContentType()Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v3

    .local v3, "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    goto :goto_1

    .line 120
    .end local v3    # "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    :cond_3
    const/4 v3, 0x0

    .line 122
    .restart local v3    # "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    :goto_1
    if-eqz v3, :cond_4

    .line 123
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    goto :goto_2

    .line 125
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v4, "buffer":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 128
    const-string v5, "; charset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_5
    new-instance v5, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 134
    .end local v3    # "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v3

    if-nez v3, :cond_7

    .line 136
    new-instance v3, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 138
    :cond_7
    new-instance v2, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-direct {v2, v3, v4, v0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;Lcz/msebera/android/httpclient/entity/mime/Header;)V

    return-object v2
.end method

.method public removeFields(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/Header;->removeFields(Ljava/lang/String;)I

    .line 92
    return-object p0
.end method

.method public setBody(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 0
    .param p1, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 73
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 74
    return-object p0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 84
    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->setField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 86
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    .line 69
    return-object p0
.end method
