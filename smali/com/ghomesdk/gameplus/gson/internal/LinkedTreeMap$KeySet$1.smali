.class Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet$1;
.super Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet$1;->this$1:Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap;

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/ghomesdk/gameplus/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
