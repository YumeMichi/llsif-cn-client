.class Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;
.super Ljava/lang/Object;
.source "GLPostRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onFailureOnUI(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;Ljava/util/Map;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onFailure(Ljava/util/Map;)V

    return-void
.end method
