.class public Lcom/example/theapp/NewsData;
.super Ljava/lang/Object;
.source "NewsData.java"


# instance fields
.field final ImageArray:[I

.field private Info:Ljava/lang/String;

.field private TimeEnds:Ljava/lang/String;

.field private TimeStarts:Ljava/lang/String;

.field private Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/example/theapp/NewsData;->ImageArray:[I

    .line 26
    return-void

    :array_0
    .array-data 4
        0x7f0700a9
        0x7f0700aa
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "Info"    # Ljava/lang/String;
    .param p3, "TimeStarts"    # Ljava/lang/String;
    .param p4, "TimeEnds"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/example/theapp/NewsData;->ImageArray:[I

    .line 28
    iput-object p1, p0, Lcom/example/theapp/NewsData;->Title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/example/theapp/NewsData;->Info:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/example/theapp/NewsData;->TimeStarts:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/example/theapp/NewsData;->TimeEnds:Ljava/lang/String;

    .line 32
    return-void

    :array_0
    .array-data 4
        0x7f0700a9
        0x7f0700aa
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
    .end array-data
.end method


# virtual methods
.method public getImage(I)I
    .locals 1
    .param p1, "position"    # I

    .line 37
    iget-object v0, p0, Lcom/example/theapp/NewsData;->ImageArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/example/theapp/NewsData;->Info:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeEnds()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/example/theapp/NewsData;->TimeEnds:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeLeft()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/theapp/NewsData;->TimeStarts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/NewsData;->TimeEnds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStarts()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/example/theapp/NewsData;->TimeStarts:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/example/theapp/NewsData;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsData{Title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/NewsData;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Info=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/example/theapp/NewsData;->Info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", TimeStarts=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/example/theapp/NewsData;->TimeStarts:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", TimeEnds=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/example/theapp/NewsData;->TimeEnds:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
