.class public abstract Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fromJsonTree(Lcom/ghomesdk/gameplus/gson/JsonElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .line 287
    :try_start_0
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeReader;-><init>(Lcom/ghomesdk/gameplus/gson/JsonElement;)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final nullSafe()Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/ghomesdk/gameplus/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter$1;-><init>(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
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
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 220
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 145
    invoke-virtual {p0, v0, p2}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;"
        }
    .end annotation

    .line 236
    :try_start_0
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 237
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeWriter;->get()Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 240
    new-instance v0, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
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
.end method
