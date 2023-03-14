.class Lcom/ghomesdk/gameplus/login/LoginController$5$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController$5;->callback(ILjava/lang/String;IILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/LoginController$5;

.field final synthetic val$code:I

.field final synthetic val$currPage:I

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$prevPage:I


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController$5;ILjava/lang/String;IILjava/util/Map;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$5;

    iput p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$msg:Ljava/lang/String;

    iput p4, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$prevPage:I

    iput p5, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$currPage:I

    iput-object p6, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 396
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$5;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginController$5;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iget v2, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$code:I

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$msg:Ljava/lang/String;

    iget v4, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$prevPage:I

    iget v5, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$currPage:I

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->val$data:Ljava/util/Map;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$5$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$5;

    iget-object v7, v0, Lcom/ghomesdk/gameplus/login/LoginController$5;->val$cbResult:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-static/range {v1 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController;->access$500(Lcom/ghomesdk/gameplus/login/LoginController;ILjava/lang/String;IILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method
