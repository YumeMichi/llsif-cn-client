.class Lcom/ghomesdk/gameplus/login/model/PairKey;
.super Ljava/lang/Object;
.source "PairKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ghomesdk/gameplus/login/model/PairKey;",
        ">;"
    }
.end annotation


# instance fields
.field private op:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/PairKey;->state:I

    .line 13
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/PairKey;->op:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ghomesdk/gameplus/login/model/PairKey;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 29
    :cond_0
    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/PairKey;->state:I

    iget v2, p1, Lcom/ghomesdk/gameplus/login/model/PairKey;->state:I

    if-ge v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-le v1, v2, :cond_2

    return v0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PairKey;->op:Ljava/lang/String;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/PairKey;->op:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/model/PairKey;->compareTo(Lcom/ghomesdk/gameplus/login/model/PairKey;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PairKey [state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/PairKey;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", op = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/PairKey;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
