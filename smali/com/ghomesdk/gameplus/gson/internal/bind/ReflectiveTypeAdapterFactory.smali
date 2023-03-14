.class public final Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;Lcom/ghomesdk/gameplus/gson/internal/Excluder;Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    .line 58
    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    .line 59
    iput-object p3, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    .line 60
    iput-object p4, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method

.method private createBoundField(Lcom/ghomesdk/gameplus/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;ZZ)Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    move-object v11, p0

    move-object v8, p1

    move-object/from16 v9, p4

    .line 107
    invoke-virtual/range {p4 .. p4}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 109
    const-class v0, Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;

    move-object v5, p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, v11, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, v11, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2, p1, v9, v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/annotations/JsonAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p1, v9}, Lcom/ghomesdk/gameplus/gson/Gson;->getAdapter(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 119
    new-instance v12, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/ghomesdk/gameplus/gson/TypeAdapter;Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Z)V

    return-object v12
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcom/ghomesdk/gameplus/gson/internal/Excluder;)Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getBoundFields(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/Gson;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 144
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 145
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    .line 149
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    .line 150
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v10, v0, :cond_7

    .line 151
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 152
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_6

    aget-object v6, v12, v15

    const/4 v0, 0x1

    .line 153
    invoke-virtual {v7, v6, v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 154
    invoke-virtual {v7, v6, v14}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v1, :cond_1

    if-nez v16, :cond_1

    goto/16 :goto_5

    .line 158
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    invoke-virtual {v11}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v10, v2}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 160
    invoke-direct {v7, v6}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move-object v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    .line 163
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    const/16 v18, 0x0

    goto :goto_3

    :cond_2
    move/from16 v18, v1

    .line 166
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object v19

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v6

    move/from16 v20, v3

    move-object/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v22, v6

    move/from16 v6, v16

    .line 165
    invoke-direct/range {v0 .. v6}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/ghomesdk/gameplus/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;ZZ)Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v0

    move-object/from16 v1, p2

    .line 167
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v14, :cond_3

    move-object v2, v0

    goto :goto_4

    :cond_3
    move-object v2, v14

    :goto_4
    add-int/lit8 v3, v20, 0x1

    move/from16 v1, v18

    move-object/from16 v5, v19

    move/from16 v4, v21

    move-object/from16 v6, v22

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move-object v14, v2

    if-nez v14, :cond_5

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_1

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_6
    invoke-virtual {v11}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object v11

    .line 176
    invoke-virtual {v11}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v10

    goto/16 :goto_0

    :cond_7
    return-object v8
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    const-class v0, Lcom/ghomesdk/gameplus/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/annotations/SerializedName;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    invoke-interface {v0, p1}, Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    invoke-interface {v0}, Lcom/ghomesdk/gameplus/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-interface {v0}, Lcom/ghomesdk/gameplus/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v0

    .line 81
    array-length v1, v0

    if-nez v1, :cond_1

    .line 82
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    .line 88
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
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

    .line 94
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 96
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->get(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/ghomesdk/gameplus/gson/internal/Excluder;)Z

    move-result p1

    return p1
.end method
