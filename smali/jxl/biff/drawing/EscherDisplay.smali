.class public Ljxl/biff/drawing/EscherDisplay;
.super Ljava/lang/Object;
.source "EscherDisplay.java"


# instance fields
.field private stream:Ljxl/biff/drawing/EscherStream;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V
    .locals 0
    .param p1, "s"    # Ljxl/biff/drawing/EscherStream;
    .param p2, "bw"    # Ljava/io/BufferedWriter;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->stream:Ljxl/biff/drawing/EscherStream;

    .line 52
    iput-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    .line 53
    return-void
.end method

.method private displayContainer(Ljxl/biff/drawing/EscherContainer;I)V
    .locals 4
    .param p1, "ec"    # Ljxl/biff/drawing/EscherContainer;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayRecord(Ljxl/biff/drawing/EscherRecord;I)V

    .line 80
    add-int/lit8 p2, p2, 0x1

    .line 82
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 84
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 86
    aget-object v2, v0, v1

    .line 87
    .local v2, "er":Ljxl/biff/drawing/EscherRecord;
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecord;->getEscherData()Ljxl/biff/drawing/EscherRecordData;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    move-object v3, v2

    check-cast v3, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {p0, v3, p2}, Ljxl/biff/drawing/EscherDisplay;->displayContainer(Ljxl/biff/drawing/EscherContainer;I)V

    goto :goto_1

    .line 93
    :cond_0
    invoke-direct {p0, v2, p2}, Ljxl/biff/drawing/EscherDisplay;->displayRecord(Ljxl/biff/drawing/EscherRecord;I)V

    .line 84
    .end local v2    # "er":Ljxl/biff/drawing/EscherRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private displayRecord(Ljxl/biff/drawing/EscherRecord;I)V
    .locals 9
    .param p1, "er"    # Ljxl/biff/drawing/EscherRecord;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p2}, Ljxl/biff/drawing/EscherDisplay;->indent(I)V

    .line 110
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v0

    .line 113
    .local v0, "type":Ljxl/biff/drawing/EscherRecordType;
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordType;->getValue()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Dgg Container"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 122
    :cond_0
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "BStore Container"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 127
    :cond_1
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->DG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Dg Container"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 132
    :cond_2
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_3

    .line 134
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Spgr Container"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 137
    :cond_3
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_4

    .line 139
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Sp Container"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 142
    :cond_4
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_5

    .line 144
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Dgg"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 147
    :cond_5
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_6

    .line 149
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Bse"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 152
    :cond_6
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_7

    .line 154
    new-instance v1, Ljxl/biff/drawing/Dg;

    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecord;->getEscherData()Ljxl/biff/drawing/EscherRecordData;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/drawing/Dg;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 155
    .local v1, "dg":Ljxl/biff/drawing/Dg;
    iget-object v2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dg:  drawing id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/biff/drawing/Dg;->getDrawingId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shape count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/biff/drawing/Dg;->getShapeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 158
    .end local v1    # "dg":Ljxl/biff/drawing/Dg;
    goto/16 :goto_0

    .line 159
    :cond_7
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_8

    .line 161
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Spgr"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 164
    :cond_8
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_9

    .line 166
    new-instance v1, Ljxl/biff/drawing/Sp;

    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecord;->getEscherData()Ljxl/biff/drawing/EscherRecordData;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 167
    .local v1, "sp":Ljxl/biff/drawing/Sp;
    iget-object v2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sp:  shape id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shape type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 170
    .end local v1    # "sp":Ljxl/biff/drawing/Sp;
    goto/16 :goto_0

    .line 171
    :cond_9
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_c

    .line 173
    new-instance v1, Ljxl/biff/drawing/Opt;

    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecord;->getEscherData()Ljxl/biff/drawing/EscherRecordData;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/drawing/Opt;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 174
    .local v1, "opt":Ljxl/biff/drawing/Opt;
    const/16 v2, 0x104

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v2

    .line 175
    .local v2, "p260":Ljxl/biff/drawing/Opt$Property;
    const/16 v3, 0x105

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v3

    .line 176
    .local v3, "p261":Ljxl/biff/drawing/Opt$Property;
    iget-object v4, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v5, "Opt (value, stringValue): "

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    const-string v4, ";"

    const-string v5, ", "

    if-eqz v2, :cond_a

    .line 179
    iget-object v6, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "260: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Ljxl/biff/drawing/Opt$Property;->value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 184
    :cond_a
    if-eqz v3, :cond_b

    .line 186
    iget-object v6, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "261: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Ljxl/biff/drawing/Opt$Property;->value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 191
    :cond_b
    iget-object v4, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 192
    .end local v1    # "opt":Ljxl/biff/drawing/Opt;
    .end local v2    # "p260":Ljxl/biff/drawing/Opt$Property;
    .end local v3    # "p261":Ljxl/biff/drawing/Opt$Property;
    goto :goto_0

    .line 193
    :cond_c
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_d

    .line 195
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Client Anchor"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 198
    :cond_d
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_e

    .line 200
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Client Data"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 203
    :cond_e
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_f

    .line 205
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Client Text Box"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 208
    :cond_f
    sget-object v1, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v1, :cond_10

    .line 210
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "Split Menu Colors"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 215
    :cond_10
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 218
    :goto_0
    return-void
.end method

.method private indent(I)V
    .locals 3
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public display()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->stream:Ljxl/biff/drawing/EscherStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 63
    .local v0, "er":Ljxl/biff/drawing/EscherRecordData;
    new-instance v1, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 64
    .local v1, "ec":Ljxl/biff/drawing/EscherContainer;
    invoke-direct {p0, v1, v2}, Ljxl/biff/drawing/EscherDisplay;->displayContainer(Ljxl/biff/drawing/EscherContainer;I)V

    .line 65
    return-void
.end method
