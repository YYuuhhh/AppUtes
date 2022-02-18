.class public Ljxl/biff/ConditionalFormat;
.super Ljava/lang/Object;
.source "ConditionalFormat.java"


# instance fields
.field private conditions:Ljava/util/ArrayList;

.field private range:Ljxl/biff/ConditionalFormatRangeRecord;


# direct methods
.method public constructor <init>(Ljxl/biff/ConditionalFormatRangeRecord;)V
    .locals 1
    .param p1, "cfrr"    # Ljxl/biff/ConditionalFormatRangeRecord;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method public addCondition(Ljxl/biff/ConditionalFormatRecord;)V
    .locals 1
    .param p1, "cond"    # Ljxl/biff/ConditionalFormatRecord;

    .line 62
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public insertColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 73
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->insertColumn(I)V

    .line 74
    return-void
.end method

.method public insertRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 106
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->insertRow(I)V

    .line 107
    return-void
.end method

.method public removeColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 84
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->removeColumn(I)V

    .line 85
    return-void
.end method

.method public removeRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 95
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->removeRow(I)V

    .line 96
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 2
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 119
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormatRecord;

    .line 122
    .local v1, "cfr":Ljxl/biff/ConditionalFormatRecord;
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 123
    .end local v1    # "cfr":Ljxl/biff/ConditionalFormatRecord;
    goto :goto_0

    .line 124
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
