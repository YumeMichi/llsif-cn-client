.class Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;
.super Ljava/lang/Object;
.source "GLDownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->onFailureOnUI(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

.field final synthetic val$code:I

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;ILjava/util/Map;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    iput p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    iget v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;->val$code:I

    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->onFailure(ILjava/util/Map;)V

    return-void
.end method
