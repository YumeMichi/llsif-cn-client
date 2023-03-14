.class public final Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 2
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

    .line 45
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 46
    const-class v1, Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p1

    return-object p1
.end method

.method getTypeAdapter(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;",
            "Lcom/ghomesdk/gameplus/gson/Gson;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    .line 56
    invoke-interface {p4}, Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->get(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    move-result-object p1

    invoke-interface {p1}, Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object p1

    .line 59
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    goto :goto_2

    .line 61
    :cond_0
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p1, p2, p3}, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;->create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p1

    goto :goto_2

    .line 63
    :cond_1
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    if-nez v0, :cond_3

    instance-of v1, p1, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 67
    :goto_1
    instance-of v0, p1, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    :cond_5
    move-object v4, v1

    .line 70
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/ghomesdk/gameplus/gson/JsonSerializer;Lcom/ghomesdk/gameplus/gson/JsonDeserializer;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 77
    invoke-interface {p4}, Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->nullSafe()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p1

    :cond_6
    return-object p1
.end method
