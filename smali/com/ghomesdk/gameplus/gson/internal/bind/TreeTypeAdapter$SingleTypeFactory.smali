.class final Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    .line 133
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    :cond_1
    iput-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    .line 136
    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 137
    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    .line 138
    iput-boolean p3, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 139
    iput-object p4, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/Gson;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0, p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 147
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 148
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/ghomesdk/gameplus/gson/JsonSerializer;Lcom/ghomesdk/gameplus/gson/JsonDeserializer;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
