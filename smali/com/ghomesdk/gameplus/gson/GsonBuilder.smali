.class public final Lcom/ghomesdk/gameplus/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->DEFAULT:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    .line 79
    sget-object v0, Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;->DEFAULT:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->longSerializationPolicy:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

    .line 80
    sget-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->IDENTITY:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->serializeNulls:Z

    const/4 v1, 0x2

    .line 88
    iput v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->dateStyle:I

    .line 89
    iput v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->timeStyle:I

    .line 90
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 91
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 93
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->prettyPrinting:Z

    .line 94
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 95
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->lenient:Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    new-instance p2, Lcom/ghomesdk/gameplus/gson/DefaultDateTypeAdapter;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    .line 580
    new-instance p1, Lcom/ghomesdk/gameplus/gson/DefaultDateTypeAdapter;

    invoke-direct {p1, p2, p3}, Lcom/ghomesdk/gameplus/gson/DefaultDateTypeAdapter;-><init>(II)V

    .line 585
    :goto_0
    const-class p2, Ljava/util/Date;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->newFactory(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    const-class p2, Ljava/sql/Timestamp;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->newFactory(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    const-class p2, Ljava/sql/Date;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->newFactory(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/ghomesdk/gameplus/gson/ExclusionStrategy;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->withExclusionStrategy(Lcom/ghomesdk/gameplus/gson/ExclusionStrategy;ZZ)Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/ghomesdk/gameplus/gson/ExclusionStrategy;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->withExclusionStrategy(Lcom/ghomesdk/gameplus/gson/ExclusionStrategy;ZZ)Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object p0
.end method

.method public create()Lcom/ghomesdk/gameplus/gson/Gson;
    .locals 14

    .line 561
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 564
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 565
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 566
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 568
    new-instance v13, Lcom/ghomesdk/gameplus/gson/Gson;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->lenient:Z

    iget-boolean v10, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v11, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->longSerializationPolicy:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/ghomesdk/gameplus/gson/Gson;-><init>(Lcom/ghomesdk/gameplus/gson/internal/Excluder;Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/ghomesdk/gameplus/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v13
.end method

.method public disableHtmlEscaping()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->withModifiers([I)Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 3

    .line 471
    instance-of v0, p2, Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 475
    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    if-eqz v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 478
    instance-of v0, p2, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-eqz v0, :cond_4

    .line 479
    :cond_3
    invoke-static {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_4
    instance-of v0, p2, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p1

    check-cast p2, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/GsonBuilder;"
        }
    .end annotation

    .line 517
    instance-of v0, p2, Lcom/ghomesdk/gameplus/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/ghomesdk/gameplus/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 520
    instance-of v1, p2, Lcom/ghomesdk/gameplus/gson/JsonDeserializer;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_3
    instance-of v0, p2, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v0, :cond_4

    .line 524
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 0

    .line 426
    iput p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 0

    .line 447
    iput p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->dateStyle:I

    .line 448
    iput p2, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    .line 449
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/ghomesdk/gameplus/gson/ExclusionStrategy;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 5

    .line 313
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 314
    iget-object v3, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->withExclusionStrategy(Lcom/ghomesdk/gameplus/gson/ExclusionStrategy;ZZ)Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setLenient()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->lenient:Z

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->longSerializationPolicy:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcom/ghomesdk/gameplus/gson/GsonBuilder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->withVersion(D)Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object p0
.end method
