.class final Lgbase_okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lgbase_okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lgbase_okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lgbase_okio/Segment;->data:[B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lgbase_okio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lgbase_okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>(Lgbase_okio/Segment;)V
    .locals 3

    .line 69
    iget-object v0, p1, Lgbase_okio/Segment;->data:[B

    iget v1, p1, Lgbase_okio/Segment;->pos:I

    iget v2, p1, Lgbase_okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lgbase_okio/Segment;-><init>([BII)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p1, Lgbase_okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lgbase_okio/Segment;->data:[B

    .line 75
    iput p2, p0, Lgbase_okio/Segment;->pos:I

    .line 76
    iput p3, p0, Lgbase_okio/Segment;->limit:I

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lgbase_okio/Segment;->owner:Z

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lgbase_okio/Segment;->shared:Z

    return-void
.end method


# virtual methods
.method public compact()V
    .locals 4

    .line 141
    iget-object v0, p0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    if-eq v0, p0, :cond_3

    .line 142
    iget-boolean v1, v0, Lgbase_okio/Segment;->owner:Z

    if-nez v1, :cond_0

    return-void

    .line 143
    :cond_0
    iget v1, p0, Lgbase_okio/Segment;->limit:I

    iget v2, p0, Lgbase_okio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 144
    iget v2, v0, Lgbase_okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, Lgbase_okio/Segment;->shared:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Lgbase_okio/Segment;->pos:I

    :goto_0
    add-int/2addr v2, v0

    if-le v1, v2, :cond_2

    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    invoke-virtual {p0, v0, v1}, Lgbase_okio/Segment;->writeTo(Lgbase_okio/Segment;I)V

    .line 147
    invoke-virtual {p0}, Lgbase_okio/Segment;->pop()Lgbase_okio/Segment;

    .line 148
    invoke-static {p0}, Lgbase_okio/SegmentPool;->recycle(Lgbase_okio/Segment;)V

    return-void

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public pop()Lgbase_okio/Segment;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 86
    iget-object v0, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 87
    :goto_0
    iget-object v2, p0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    iget-object v3, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    iput-object v3, v2, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    .line 88
    iget-object v3, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    iput-object v2, v3, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    .line 89
    iput-object v1, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    .line 90
    iput-object v1, p0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    return-object v0
.end method

.method public push(Lgbase_okio/Segment;)Lgbase_okio/Segment;
    .locals 1

    .line 99
    iput-object p0, p1, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    .line 100
    iget-object v0, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    iput-object v0, p1, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    .line 101
    iget-object v0, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    iput-object p1, v0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    .line 102
    iput-object p1, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    return-object p1
.end method

.method public split(I)Lgbase_okio/Segment;
    .locals 5

    if-lez p1, :cond_1

    .line 115
    iget v0, p0, Lgbase_okio/Segment;->limit:I

    iget v1, p0, Lgbase_okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    .line 124
    new-instance v0, Lgbase_okio/Segment;

    invoke-direct {v0, p0}, Lgbase_okio/Segment;-><init>(Lgbase_okio/Segment;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lgbase_okio/SegmentPool;->take()Lgbase_okio/Segment;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lgbase_okio/Segment;->data:[B

    iget v2, p0, Lgbase_okio/Segment;->pos:I

    iget-object v3, v0, Lgbase_okio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_0
    iget v1, v0, Lgbase_okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lgbase_okio/Segment;->limit:I

    .line 131
    iget v1, p0, Lgbase_okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lgbase_okio/Segment;->pos:I

    .line 132
    iget-object p1, p0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    invoke-virtual {p1, v0}, Lgbase_okio/Segment;->push(Lgbase_okio/Segment;)Lgbase_okio/Segment;

    return-object v0

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeTo(Lgbase_okio/Segment;I)V
    .locals 4

    .line 153
    iget-boolean v0, p1, Lgbase_okio/Segment;->owner:Z

    if-eqz v0, :cond_3

    .line 154
    iget v0, p1, Lgbase_okio/Segment;->limit:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 156
    iget-boolean v1, p1, Lgbase_okio/Segment;->shared:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 157
    iget v3, p1, Lgbase_okio/Segment;->pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 158
    iget-object v1, p1, Lgbase_okio/Segment;->data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v0, p1, Lgbase_okio/Segment;->limit:I

    iget v1, p1, Lgbase_okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lgbase_okio/Segment;->limit:I

    .line 160
    iput v2, p1, Lgbase_okio/Segment;->pos:I

    goto :goto_0

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 163
    :cond_2
    :goto_0
    iget-object v0, p0, Lgbase_okio/Segment;->data:[B

    iget v1, p0, Lgbase_okio/Segment;->pos:I

    iget-object v2, p1, Lgbase_okio/Segment;->data:[B

    iget v3, p1, Lgbase_okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v0, p1, Lgbase_okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lgbase_okio/Segment;->limit:I

    .line 165
    iget p1, p0, Lgbase_okio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lgbase_okio/Segment;->pos:I

    return-void

    .line 153
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
