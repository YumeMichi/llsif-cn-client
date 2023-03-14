.class final Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters;->newFactory(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;Lcom/ghomesdk/gameplus/gson/TypeAdapter;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 0
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

    .line 827
    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
