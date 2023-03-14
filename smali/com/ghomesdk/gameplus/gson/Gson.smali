.class public final Lcom/ghomesdk/gameplus/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/ghomesdk/gameplus/gson/Gson$FutureTypeAdapter<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNamingStrategy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field private final lenient:Z

.field private final prettyPrinting:Z

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/ghomesdk/gameplus/gson/Gson$1;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/Gson$1;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/Gson;->NULL_KEY_SURROGATE:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 175
    sget-object v1, Lcom/ghomesdk/gameplus/gson/internal/Excluder;->DEFAULT:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    sget-object v2, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->IDENTITY:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;->DEFAULT:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 175
    invoke-direct/range {v0 .. v12}, Lcom/ghomesdk/gameplus/gson/Gson;-><init>(Lcom/ghomesdk/gameplus/gson/internal/Excluder;Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/ghomesdk/gameplus/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/Excluder;Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/ghomesdk/gameplus/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/internal/Excluder;",
            "Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/InstanceCreator<",
            "*>;>;ZZZZZZZ",
            "Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 188
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    .line 189
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    .line 190
    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/Gson;->fieldNamingStrategy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    .line 191
    iput-boolean p4, p0, Lcom/ghomesdk/gameplus/gson/Gson;->serializeNulls:Z

    .line 192
    iput-boolean p6, p0, Lcom/ghomesdk/gameplus/gson/Gson;->generateNonExecutableJson:Z

    .line 193
    iput-boolean p7, p0, Lcom/ghomesdk/gameplus/gson/Gson;->htmlSafe:Z

    .line 194
    iput-boolean p8, p0, Lcom/ghomesdk/gameplus/gson/Gson;->prettyPrinting:Z

    .line 195
    iput-boolean p9, p0, Lcom/ghomesdk/gameplus/gson/Gson;->lenient:Z

    .line 197
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {p3, p12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {p11}, Lcom/ghomesdk/gameplus/gson/Gson;->longAdapter(Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p4

    .line 216
    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-static {p6, p7, p4}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Double;

    .line 218
    invoke-direct {p0, p10}, Lcom/ghomesdk/gameplus/gson/Gson;->doubleAdapter(Z)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p8

    .line 217
    invoke-static {p6, p7, p8}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Float;

    .line 220
    invoke-direct {p0, p10}, Lcom/ghomesdk/gameplus/gson/Gson;->floatAdapter(Z)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p8

    .line 219
    invoke-static {p6, p7, p8}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object p6, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object p6, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object p6, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p4}, Lcom/ghomesdk/gameplus/gson/Gson;->atomicLongAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p7

    invoke-static {p6, p7}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const-class p6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p4}, Lcom/ghomesdk/gameplus/gson/Gson;->atomicLongArrayAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p4

    invoke-static {p6, p4}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-static {p4, p6}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-static {p4, p6}, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance p4, Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object p6, p0, Lcom/ghomesdk/gameplus/gson/Gson;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-direct {p4, p6}, Lcom/ghomesdk/gameplus/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p4, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;

    iget-object p6, p0, Lcom/ghomesdk/gameplus/gson/Gson;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-direct {p4, p6, p5}, Lcom/ghomesdk/gameplus/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance p4, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object p5, p0, Lcom/ghomesdk/gameplus/gson/Gson;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-direct {p4, p5}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    iput-object p4, p0, Lcom/ghomesdk/gameplus/gson/Gson;->jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 251
    iget-object p4, p0, Lcom/ghomesdk/gameplus/gson/Gson;->jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object p4, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance p4, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object p5, p0, Lcom/ghomesdk/gameplus/gson/Gson;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    iget-object p6, p0, Lcom/ghomesdk/gameplus/gson/Gson;->jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {p4, p5, p2, p1, p6}, Lcom/ghomesdk/gameplus/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;Lcom/ghomesdk/gameplus/gson/internal/Excluder;Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 860
    :try_start_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object p0

    sget-object p1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->END_DOCUMENT:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 861
    :cond_0
    new-instance p0, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/ghomesdk/gameplus/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 866
    new-instance p1, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 864
    new-instance p1, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static atomicLongAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 354
    new-instance v0, Lcom/ghomesdk/gameplus/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/gson/Gson$5;-><init>(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)V

    .line 362
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/Gson$5;->nullSafe()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static atomicLongArrayAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Lcom/ghomesdk/gameplus/gson/Gson$6;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/gson/Gson$6;-><init>(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)V

    .line 389
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/Gson$6;->nullSafe()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method static checkValidFloatingPoint(D)V
    .locals 2

    .line 324
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleAdapter(Z)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 277
    sget-object p1, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    return-object p1

    .line 279
    :cond_0
    new-instance p1, Lcom/ghomesdk/gameplus/gson/Gson$2;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/Gson$2;-><init>(Lcom/ghomesdk/gameplus/gson/Gson;)V

    return-object p1
.end method

.method private floatAdapter(Z)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 301
    sget-object p1, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    return-object p1

    .line 303
    :cond_0
    new-instance p1, Lcom/ghomesdk/gameplus/gson/Gson$3;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/Gson$3;-><init>(Lcom/ghomesdk/gameplus/gson/Gson;)V

    return-object p1
.end method

.method private static longAdapter(Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;->DEFAULT:Lcom/ghomesdk/gameplus/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    .line 333
    sget-object p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->LONG:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    return-object p0

    .line 335
    :cond_0
    new-instance p0, Lcom/ghomesdk/gameplus/gson/Gson$4;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/Gson$4;-><init>()V

    return-object p0
.end method


# virtual methods
.method public excluder()Lcom/ghomesdk/gameplus/gson/internal/Excluder;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->excluder:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    return-object v0
.end method

.method public fieldNamingStrategy()Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->fieldNamingStrategy:Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;

    return-object v0
.end method

.method public fromJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;
        }
    .end annotation

    .line 926
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 927
    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 953
    :cond_0
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeReader;-><init>(Lcom/ghomesdk/gameplus/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;,
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;
        }
    .end annotation

    .line 881
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    .line 882
    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->setLenient(Z)V

    .line 884
    :try_start_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    const/4 v1, 0x0

    .line 886
    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p2

    .line 887
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->getAdapter(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p2

    .line 888
    invoke-virtual {p2, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->setLenient(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 903
    :try_start_1
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 900
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 905
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->setLenient(Z)V

    return-object p2

    .line 898
    :cond_0
    :try_start_2
    new-instance v1, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    :goto_0
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->setLenient(Z)V

    throw p2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;,
            Lcom/ghomesdk/gameplus/gson/JsonIOException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    move-result-object p1

    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 827
    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)V

    .line 828
    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;,
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    move-result-object p1

    .line 853
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 854
    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)V

    return-object p2
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;
        }
    .end annotation

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 775
    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 801
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0, v0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/ghomesdk/gameplus/gson/Gson;->NULL_KEY_SURROGATE:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v0, :cond_1

    return-object v0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 414
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/gson/Gson$FutureTypeAdapter;

    if-eqz v2, :cond_3

    return-object v2

    .line 420
    :cond_3
    :try_start_0
    new-instance v2, Lcom/ghomesdk/gameplus/gson/Gson$FutureTypeAdapter;

    invoke-direct {v2}, Lcom/ghomesdk/gameplus/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 421
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v3, p0, Lcom/ghomesdk/gameplus/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    .line 424
    invoke-interface {v4, p0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;->create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 426
    invoke-virtual {v2, v4}, Lcom/ghomesdk/gameplus/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/ghomesdk/gameplus/gson/TypeAdapter;)V

    .line 427
    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 436
    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 431
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 433
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 436
    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 522
    invoke-static {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->getAdapter(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getDelegateAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->jsonAdapterFactory:Lcom/ghomesdk/gameplus/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_0
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;->create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 512
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public htmlSafe()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->htmlSafe:Z

    return v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcom/ghomesdk/gameplus/gson/stream/JsonReader;
    .locals 1

    .line 729
    new-instance v0, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 730
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->lenient:Z

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 715
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 717
    :cond_0
    new-instance v0, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 718
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->prettyPrinting:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 719
    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 721
    :cond_1
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method

.method public serializeNulls()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/Gson;->serializeNulls:Z

    return v0
.end method

.method public toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    .line 688
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 689
    invoke-virtual {p0, p1, v0}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 690
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 582
    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 584
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 603
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 604
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 605
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;
        }
    .end annotation

    .line 739
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    .line 740
    invoke-virtual {p2, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setLenient(Z)V

    .line 741
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 742
    iget-boolean v2, p0, Lcom/ghomesdk/gameplus/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 743
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    .line 744
    iget-boolean v3, p0, Lcom/ghomesdk/gameplus/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v3}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 746
    :try_start_0
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->write(Lcom/ghomesdk/gameplus/gson/JsonElement;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setLenient(Z)V

    .line 751
    invoke-virtual {p2, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 752
    invoke-virtual {p2, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 748
    :try_start_1
    new-instance v3, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {v3, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    :goto_0
    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setLenient(Z)V

    .line 751
    invoke-virtual {p2, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 752
    invoke-virtual {p2, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw p1
.end method

.method public toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;
        }
    .end annotation

    .line 703
    :try_start_0
    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    move-result-object p2

    .line 704
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 706
    new-instance p2, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    goto :goto_0

    .line 626
    :cond_0
    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/Appendable;)V

    :goto_0
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;
        }
    .end annotation

    .line 662
    invoke-static {p2}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->getAdapter(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object p2

    .line 663
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    .line 664
    invoke-virtual {p3, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setLenient(Z)V

    .line 665
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 666
    iget-boolean v2, p0, Lcom/ghomesdk/gameplus/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 667
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    .line 668
    iget-boolean v3, p0, Lcom/ghomesdk/gameplus/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v3}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 670
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {p3, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setLenient(Z)V

    .line 675
    invoke-virtual {p3, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 676
    invoke-virtual {p3, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 672
    :try_start_1
    new-instance p2, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_0
    invoke-virtual {p3, v0}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setLenient(Z)V

    .line 675
    invoke-virtual {p3, v1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 676
    invoke-virtual {p3, v2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonIOException;
        }
    .end annotation

    .line 648
    :try_start_0
    invoke-static {p3}, Lcom/ghomesdk/gameplus/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/ghomesdk/gameplus/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    move-result-object p3

    .line 649
    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 651
    new-instance p2, Lcom/ghomesdk/gameplus/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    .line 540
    sget-object p1, Lcom/ghomesdk/gameplus/gson/JsonNull;->INSTANCE:Lcom/ghomesdk/gameplus/gson/JsonNull;

    return-object p1

    .line 542
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ghomesdk/gameplus/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 562
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 563
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;)V

    .line 564
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/JsonTreeWriter;->get()Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->serializeNulls:Z

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/Gson;->constructorConstructor:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
