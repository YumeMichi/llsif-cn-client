.class public final Lcom/ghomesdk/gameplus/gson/JsonArray;
.super Lcom/ghomesdk/gameplus/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lcom/ghomesdk/gameplus/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/JsonElement;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/JsonElement;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/ghomesdk/gameplus/gson/JsonElement;)V
    .locals 1

    if-nez p1, :cond_0

    .line 102
    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Character;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lcom/ghomesdk/gameplus/gson/JsonArray;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public contains(Lcom/ghomesdk/gameplus/gson/JsonElement;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method deepCopy()Lcom/ghomesdk/gameplus/gson/JsonArray;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/ghomesdk/gameplus/gson/JsonArray;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/gson/JsonArray;-><init>(I)V

    .line 51
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/gson/JsonElement;

    .line 52
    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/gson/JsonElement;->deepCopy()Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ghomesdk/gameplus/gson/JsonArray;->add(Lcom/ghomesdk/gameplus/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/ghomesdk/gameplus/gson/JsonArray;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/JsonArray;-><init>()V

    return-object v0
.end method

.method bridge synthetic deepCopy()Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/JsonArray;->deepCopy()Lcom/ghomesdk/gameplus/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 373
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/JsonArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ghomesdk/gameplus/gson/JsonArray;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public get(I)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/gson/JsonElement;

    return-object p1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/gson/JsonElement;

    return-object p1
.end method

.method public remove(Lcom/ghomesdk/gameplus/gson/JsonElement;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(ILcom/ghomesdk/gameplus/gson/JsonElement;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/gson/JsonElement;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
