.class public interface abstract Lcom/ghomesdk/gameplus/gson/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/JsonSerializationContext;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/JsonSerializationContext;",
            ")",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;"
        }
    .end annotation
.end method
