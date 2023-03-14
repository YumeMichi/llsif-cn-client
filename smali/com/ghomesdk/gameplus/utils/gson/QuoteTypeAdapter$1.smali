.class Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "QuoteTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;->create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;

.field final synthetic val$delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

.field final synthetic val$gson:Lcom/ghomesdk/gameplus/gson/Gson;

.field final synthetic val$tokenType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/Gson;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->this$0:Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$tokenType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$gson:Lcom/ghomesdk/gameplus/gson/Gson;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

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

    .line 36
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->STRING:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$tokenType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_4

    .line 37
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$tokenType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 40
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 41
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 43
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 44
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 42
    invoke-static {v1, v2, v0}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$gson:Lcom/ghomesdk/gameplus/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$tokenType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    return-object p1
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
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

    .line 29
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;->val$delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
