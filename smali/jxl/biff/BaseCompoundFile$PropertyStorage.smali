.class public Ljxl/biff/BaseCompoundFile$PropertyStorage;
.super Ljava/lang/Object;
.source "BaseCompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/BaseCompoundFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PropertyStorage"
.end annotation


# instance fields
.field public child:I

.field public colour:I

.field public data:[B

.field public name:Ljava/lang/String;

.field public next:I

.field public previous:I

.field public size:I

.field public startBlock:I

.field final synthetic this$0:Ljxl/biff/BaseCompoundFile;

.field public type:I


# direct methods
.method public constructor <init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->this$0:Ljxl/biff/BaseCompoundFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    .line 248
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x40

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 253
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 253
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 257
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljxl/biff/BaseCompoundFile;[B)V
    .locals 5
    .param p2, "d"    # [B

    .line 182
    iput-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->this$0:Ljxl/biff/BaseCompoundFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    .line 184
    const/16 p1, 0x40

    aget-byte v0, p2, p1

    const/16 v1, 0x41

    aget-byte v1, p2, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 187
    .local v0, "nameSize":I
    if-le v0, p1, :cond_0

    .line 189
    invoke-static {}, Ljxl/biff/BaseCompoundFile;->access$000()Ljxl/common/Logger;

    move-result-object p1

    const-string v1, "property set name exceeds max length - truncating"

    invoke-virtual {p1, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 190
    const/16 v0, 0x40

    .line 193
    :cond_0
    iget-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x42

    aget-byte v1, p1, v1

    iput v1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    .line 194
    const/16 v1, 0x43

    aget-byte v1, p1, v1

    iput v1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->colour:I

    .line 196
    const/16 v1, 0x74

    aget-byte v1, p1, v1

    const/16 v2, 0x75

    aget-byte v2, p1, v2

    const/16 v3, 0x76

    aget-byte v3, p1, v3

    const/16 v4, 0x77

    aget-byte p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    .line 201
    iget-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x78

    aget-byte v1, p1, v1

    const/16 v2, 0x79

    aget-byte v2, p1, v2

    const/16 v3, 0x7a

    aget-byte v3, p1, v3

    const/16 v4, 0x7b

    aget-byte p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    .line 206
    iget-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x44

    aget-byte v1, p1, v1

    const/16 v2, 0x45

    aget-byte v2, p1, v2

    const/16 v3, 0x46

    aget-byte v3, p1, v3

    const/16 v4, 0x47

    aget-byte p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    .line 211
    iget-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x48

    aget-byte v1, p1, v1

    const/16 v2, 0x49

    aget-byte v2, p1, v2

    const/16 v3, 0x4a

    aget-byte v3, p1, v3

    const/16 v4, 0x4b

    aget-byte p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    .line 216
    iget-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x4c

    aget-byte v1, p1, v1

    const/16 v2, 0x4d

    aget-byte v2, p1, v2

    const/16 v3, 0x4e

    aget-byte v3, p1, v3

    const/16 v4, 0x4f

    aget-byte p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    .line 222
    const/4 p1, 0x0

    .line 223
    .local p1, "chars":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 225
    add-int/lit8 v2, v0, -0x1

    div-int/lit8 p1, v2, 0x2

    .line 228
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "n":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 231
    iget-object v3, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    mul-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public setChild(I)V
    .locals 2
    .param p1, "dir"    # I

    .line 321
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    .line 322
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x4c

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 323
    return-void
.end method

.method public setColour(I)V
    .locals 3
    .param p1, "col"    # I

    .line 332
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->colour:I

    .line 333
    iget-object v1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v2, 0x43

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 334
    return-void
.end method

.method public setNext(I)V
    .locals 2
    .param p1, "nxt"    # I

    .line 310
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    .line 311
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x48

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 312
    return-void
.end method

.method public setPrevious(I)V
    .locals 2
    .param p1, "prev"    # I

    .line 299
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    .line 300
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x44

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 301
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "s"    # I

    .line 288
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    .line 289
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x78

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 290
    return-void
.end method

.method public setStartBlock(I)V
    .locals 2
    .param p1, "sb"    # I

    .line 277
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    .line 278
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x74

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 279
    return-void
.end method

.method public setType(I)V
    .locals 3
    .param p1, "t"    # I

    .line 266
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    .line 267
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    int-to-byte v1, p1

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    .line 268
    return-void
.end method
