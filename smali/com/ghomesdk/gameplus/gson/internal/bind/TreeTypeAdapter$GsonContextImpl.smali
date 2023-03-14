.class final Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/JsonSerializationContext;
.implements Lcom/ghomesdk/gameplus/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ghomesdk/gameplus/gson/JsonParseException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->access$100(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;)Lcom/ghomesdk/gameplus/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->fromJson(Lcom/ghomesdk/gameplus/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->access$100(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;)Lcom/ghomesdk/gameplus/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/JsonElement;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;->access$100(Lcom/ghomesdk/gameplus/gson/internal/bind/TreeTypeAdapter;)Lcom/ghomesdk/gameplus/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
