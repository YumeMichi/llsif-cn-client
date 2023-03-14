.class Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;
.super Ljava/lang/Object;
.source "GLGetRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailureOnUI(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;Ljava/util/Map;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailure(Ljava/util/Map;)V

    return-void
.end method
