.class public interface abstract Lcom/ghomesdk/gameplus/gson/JsonDeserializer;
.super Ljava/lang/Object;
.source "JsonDeserializer.java"


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
.method public abstract deserialize(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/ghomesdk/gameplus/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonParseException;
        }
    .end annotation
.end method
