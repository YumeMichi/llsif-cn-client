.class Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;
.super Ljava/lang/Object;
.source "GLGetRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onSuccessOnUI(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

.field final synthetic val$code:I

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;ILjava/util/Map;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    iput p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    iget v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;->val$code:I

    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onSuccess(ILjava/util/Map;)V

    return-void
.end method
