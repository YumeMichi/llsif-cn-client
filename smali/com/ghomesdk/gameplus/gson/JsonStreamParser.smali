.class public final Lcom/ghomesdk/gameplus/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/ghomesdk/gameplus/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/ghomesdk/gameplus/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->parser:Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    .line 71
    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->parser:Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->setLenient(Z)V

    .line 72
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->parser:Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->END_DOCUMENT:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;
    :try_end_0
    .catch Lcom/ghomesdk/gameplus/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 110
    new-instance v2, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 108
    new-instance v2, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 112
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public next()Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonParseException;
        }
    .end annotation

    const-string v0, "Failed parsing JSON source to Json"

    .line 83
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->parser:Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->parse(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ghomesdk/gameplus/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_0
    throw v0

    :catch_1
    move-exception v1

    .line 92
    new-instance v2, Lcom/ghomesdk/gameplus/gson/JsonParseException;

    invoke-direct {v2, v0, v1}, Lcom/ghomesdk/gameplus/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 90
    new-instance v2, Lcom/ghomesdk/gameplus/gson/JsonParseException;

    invoke-direct {v2, v0, v1}, Lcom/ghomesdk/gameplus/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 84
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/JsonStreamParser;->next()Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
