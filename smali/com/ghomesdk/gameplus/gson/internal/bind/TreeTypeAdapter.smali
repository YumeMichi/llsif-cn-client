.class public final Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
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
.field private final context:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/ghomesdk/gameplus/gson/Gson;

.field private final serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/gson/JsonSerializer;Lcom/ghomesdk/gameplus/gson/JsonDeserializer;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/gson/Gson;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    .line 49
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->context:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 56
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    .line 57
    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    .line 58
    iput-object p3, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    .line 59
    iput-object p4, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    .line 60
    iput-object p5, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    return-void
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;)Lcom/ghomesdk/gameplus/gson/Gson;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    return-object p0
.end method

.method private delegate()Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/gson/Gson;->getDelegateAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method

.method public static newFactory(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    new-instance v1, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
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

    .line 64
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->parse(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->context:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p1, v1, v2}, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;->deserialize(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->nullValue()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->context:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcom/ghomesdk/gameplus/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/JsonSerializationContext;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p2

    .line 84
    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->write(Lcom/ghomesdk/gameplus/gson/JsonElement;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V

    return-void
.end method
