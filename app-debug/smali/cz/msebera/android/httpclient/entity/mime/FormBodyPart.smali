.class public Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

.field private final header:Lcz/msebera/android/httpclient/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v0, "Body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 67
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    .line 69
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateContentDisp(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    .line 70
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateContentType(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    .line 71
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateTransferEncoding(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;Lcz/msebera/android/httpclient/entity/mime/Header;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .param p3, "header"    # Lcz/msebera/android/httpclient/entity/mime/Header;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    const-string v0, "Body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 54
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    .line 55
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 87
    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    .line 89
    return-void
.end method

.method protected generateContentDisp(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 3
    .param p1, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "; filename=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Disposition"

    invoke-virtual {p0, v2, v1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected generateContentType(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 4
    .param p1, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    instance-of v0, p1, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->getContentType()Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    .local v0, "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    goto :goto_0

    .line 117
    .end local v0    # "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    :cond_0
    const/4 v0, 0x0

    .line 119
    .restart local v0    # "contentType":Lcz/msebera/android/httpclient/entity/ContentType;
    :goto_0
    const-string v1, "Content-Type"

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v2, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 125
    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    :goto_1
    return-void
.end method

.method protected generateTransferEncoding(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 2
    .param p1, "body"    # Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p0, v1, v0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .locals 1

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;
    .locals 1

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
