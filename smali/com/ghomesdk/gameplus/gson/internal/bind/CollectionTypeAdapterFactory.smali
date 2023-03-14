.class public final Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 3
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

    .line 46
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 48
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 49
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/gson/Gson;->getAdapter(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-virtual {v2, p2}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->get(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    move-result-object p2

    .line 58
    new-instance v2, Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/ghomesdk/gameplus/gson/Gson;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;)V

    return-object v2
.end method
