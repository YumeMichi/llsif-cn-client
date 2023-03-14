.class Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->get(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

.field final synthetic val$rawTypeCreator:Lcom/ghomesdk/gameplus/gson/InstanceCreator;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;->this$0:Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/ghomesdk/gameplus/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
