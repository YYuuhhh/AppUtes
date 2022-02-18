.class public Lcom/example/theapp/FoodsData;
.super Ljava/lang/Object;
.source "FoodsData.java"


# instance fields
.field private Image:I

.field private Price:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private Type:Ljava/lang/String;

.field private isSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "Type"    # Ljava/lang/String;
    .param p3, "Price"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/example/theapp/FoodsData;->Title:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/example/theapp/FoodsData;->Type:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/example/theapp/FoodsData;->Price:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/example/theapp/FoodsData;->Image:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/example/theapp/FoodsData;->Price:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/theapp/FoodsData;->isSelected:Z

    .line 40
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/example/theapp/FoodsData;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/example/theapp/FoodsData;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getnotSelected()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/theapp/FoodsData;->isSelected:Z

    .line 43
    return-void
.end method

.method public setImage(I)V
    .locals 0
    .param p1, "Image"    # I

    .line 44
    iput p1, p0, Lcom/example/theapp/FoodsData;->Image:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/theapp/FoodsData;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/FoodsData;->Price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
