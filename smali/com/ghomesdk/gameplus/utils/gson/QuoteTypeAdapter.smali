.class Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;
.super Ljava/lang/Object;
.source "QuoteTypeAdapter.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 24
    invoke-virtual {p1, p0, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->getDelegateAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter$1;-><init>(Lcom/ghomesdk/gameplus/utils/gson/QuoteTypeAdapter;Lcom/ghomesdk/gameplus/gson/TypeAdapter;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/Gson;)V

    return-object v1
.end method
