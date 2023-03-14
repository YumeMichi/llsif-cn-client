.class public final Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/ghomesdk/gameplus/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    return-void
.end method

.method constructor <init>(Lcom/ghomesdk/gameplus/gson/Gson;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    return-void
.end method


# virtual methods
.method public read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$ghomesdk$gameplus$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 86
    :pswitch_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 83
    :pswitch_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_2
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_3
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_4
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->beginObject()V

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->endObject()V

    return-object v0

    .line 59
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->beginArray()V

    .line 61
    :goto_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->endArray()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->nullValue()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->beginObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 104
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->endObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 108
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
