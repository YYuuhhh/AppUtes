.class Lcom/example/theapp/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/SplashScreen;


# direct methods
.method constructor <init>(Lcom/example/theapp/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/SplashScreen;

    .line 48
    iput-object p1, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 87
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object v0

    const-string v1, "TAG"

    const-string v2, "loadPost:onCancelled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 51
    sget-object v0, Lcom/example/theapp/SplashScreen;->Newses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/example/theapp/SplashScreen;->Newses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    :cond_0
    sget-object v0, Lcom/example/theapp/SplashScreen;->Foods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/example/theapp/SplashScreen;->Foods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    :cond_1
    const-string v0, "NewsData"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 54
    .local v1, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v2, Lcom/example/theapp/NewsData;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/theapp/NewsData;

    .line 56
    .local v2, "news":Lcom/example/theapp/NewsData;
    :try_start_0
    iget-object v3, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v4, v3, Lcom/example/theapp/SplashScreen;->format:Ljava/text/DateFormat;

    invoke-virtual {v2}, Lcom/example/theapp/NewsData;->getTimeStarts()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/example/theapp/SplashScreen;->Start:Ljava/util/Date;

    .line 57
    iget-object v3, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v4, v3, Lcom/example/theapp/SplashScreen;->format:Ljava/text/DateFormat;

    invoke-virtual {v2}, Lcom/example/theapp/NewsData;->getTimeEnds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/example/theapp/SplashScreen;->End:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 61
    .end local v3    # "e":Ljava/text/ParseException;
    :goto_1
    if-eqz v2, :cond_2

    .line 62
    iget-object v3, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v3, v3, Lcom/example/theapp/SplashScreen;->date:Ljava/util/Date;

    iget-object v4, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v4, v4, Lcom/example/theapp/SplashScreen;->Start:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v3, v3, Lcom/example/theapp/SplashScreen;->date:Ljava/util/Date;

    iget-object v4, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v4, v4, Lcom/example/theapp/SplashScreen;->End:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    sget-object v3, Lcom/example/theapp/SplashScreen;->Newses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    if-eqz v2, :cond_3

    .line 66
    iget-object v3, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v3, v3, Lcom/example/theapp/SplashScreen;->date:Ljava/util/Date;

    iget-object v4, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    iget-object v4, v4, Lcom/example/theapp/SplashScreen;->End:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    sget-object v3, Lcom/example/theapp/SplashScreen;->OldNewses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v1    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v2    # "news":Lcom/example/theapp/NewsData;
    :cond_3
    goto :goto_0

    .line 69
    :cond_4
    const-string v0, "Foods"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 70
    .restart local v1    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v2, Lcom/example/theapp/FoodsData;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/theapp/FoodsData;

    .line 71
    .local v2, "foods":Lcom/example/theapp/FoodsData;
    invoke-virtual {v2}, Lcom/example/theapp/FoodsData;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "icecream"

    if-ne v3, v4, :cond_5

    .line 72
    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Lcom/example/theapp/FoodsData;->setImage(I)V

    .line 74
    :cond_5
    sget-object v3, Lcom/example/theapp/SplashScreen;->Foods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/example/theapp/FoodsData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adadada"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v2    # "foods":Lcom/example/theapp/FoodsData;
    goto :goto_2

    .line 77
    :cond_6
    iget-object v0, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    invoke-static {v0}, Lcom/example/theapp/SplashScreen;->access$000(Lcom/example/theapp/SplashScreen;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    const-class v2, Lcom/example/theapp/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/example/theapp/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v1, p0, Lcom/example/theapp/SplashScreen$1;->this$0:Lcom/example/theapp/SplashScreen;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/example/theapp/SplashScreen;->access$002(Lcom/example/theapp/SplashScreen;Z)Z

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    return-void
.end method
