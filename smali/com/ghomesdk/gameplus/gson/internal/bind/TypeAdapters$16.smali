.class final Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$16;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$16;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v0

    .line 394
    sget-object v1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->NULL:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 399
    :cond_0
    sget-object v1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->BOOLEAN:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 400
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 402
    :cond_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$16;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void
.end method
