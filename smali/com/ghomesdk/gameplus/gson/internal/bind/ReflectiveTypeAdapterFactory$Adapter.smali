.class public final Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    .line 202
    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->NULL:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 214
    :try_start_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->beginObject()V

    .line 215
    :goto_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-eqz v1, :cond_2

    .line 218
    iget-boolean v2, v1, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->endObject()V

    return-object v0

    :catch_0
    move-exception p1

    .line 227
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 225
    new-instance v0, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->nullValue()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->beginObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 242
    invoke-virtual {v1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, v1, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 244
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->endObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    :catch_0
    move-exception p1

    .line 248
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
