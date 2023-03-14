.class public Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# static fields
.field static gson:Lcom/ghomesdk/gameplus/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/ghomesdk/gameplus/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;

    invoke-direct {v1}, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;)Lcom/ghomesdk/gameplus/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/GsonBuilder;->create()Lcom/ghomesdk/gameplus/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
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

    .line 18
    sget-object v0, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->gson:Lcom/ghomesdk/gameplus/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/ghomesdk/gameplus/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
