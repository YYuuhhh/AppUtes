.class Ljxl/biff/drawing/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field private data:[B

.field private length:I

.field private pos:I

.field private type:Ljxl/biff/drawing/ChunkType;


# direct methods
.method public constructor <init>(IILjxl/biff/drawing/ChunkType;[B)V
    .locals 2
    .param p1, "p"    # I
    .param p2, "l"    # I
    .param p3, "ct"    # Ljxl/biff/drawing/ChunkType;
    .param p4, "d"    # [B

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Ljxl/biff/drawing/Chunk;->pos:I

    .line 32
    iput p2, p0, Ljxl/biff/drawing/Chunk;->length:I

    .line 33
    iput-object p3, p0, Ljxl/biff/drawing/Chunk;->type:Ljxl/biff/drawing/ChunkType;

    .line 34
    new-array v0, p2, [B

    iput-object v0, p0, Ljxl/biff/drawing/Chunk;->data:[B

    .line 35
    const/4 v1, 0x0

    invoke-static {p4, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 41
    iget-object v0, p0, Ljxl/biff/drawing/Chunk;->data:[B

    return-object v0
.end method
