.class final Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;Lcom/ghomesdk/gameplus/gson/Gson;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TV;>;",
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    .line 154
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {p1, p2, p4, p3}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    .line 156
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {p1, p2, p6, p5}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    .line 158
    iput-object p7, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    return-void
.end method

.method private keyToString(Lcom/ghomesdk/gameplus/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonElement;->getAsJsonPrimitive()Lcom/ghomesdk/gameplus/gson/JsonPrimitive;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    .line 261
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->NULL:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    invoke-interface {v1}, Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 170
    sget-object v2, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->beginArray()V

    .line 172
    :goto_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->beginArray()V

    .line 174
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 176
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 178
    :cond_1
    new-instance p1, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_2
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->endArray()V

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->beginObject()V

    .line 185
    :goto_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    sget-object v0, Lcom/ghomesdk/gameplus/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/ghomesdk/gameplus/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)V

    .line 187
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 191
    :cond_4
    new-instance p1, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_5
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->endObject()V

    :goto_2
    return-object v1
.end method

.method public bridge synthetic write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->nullValue()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;

    iget-boolean v0, v0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    if-nez v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->beginObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 207
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 209
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->endObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 216
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 220
    iget-object v5, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object v5

    .line 221
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v5}, Lcom/ghomesdk/gameplus/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/ghomesdk/gameplus/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->beginArray()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 229
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->beginArray()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/gson/JsonElement;

    invoke-static {v3, p1}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->write(Lcom/ghomesdk/gameplus/gson/JsonElement;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V

    .line 231
    iget-object v3, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->endArray()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    :cond_6
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->endArray()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    goto :goto_6

    .line 236
    :cond_7
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->beginObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    .line 238
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/gson/JsonElement;

    .line 239
    invoke-direct {p0, v3}, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/ghomesdk/gameplus/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    .line 240
    iget-object v3, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 242
    :cond_8
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->endObject()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    :goto_6
    return-void
.end method
