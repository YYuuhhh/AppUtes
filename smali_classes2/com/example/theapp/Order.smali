.class public Lcom/example/theapp/Order;
.super Ljava/lang/Object;
.source "Order.java"


# instance fields
.field public Order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/theapp/FoodsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/theapp/FoodsData;",
            ">;)V"
        }
    .end annotation

    .line 8
    .local p1, "Order":Ljava/util/List;, "Ljava/util/List<Lcom/example/theapp/FoodsData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/example/theapp/Order;->Order:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/theapp/FoodsData;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/example/theapp/Order;->Order:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/example/theapp/Order;->Order:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
