.class Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;
.super Ljava/lang/Object;
.source "LoginIconAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;

.field final synthetic val$dataIcon:Lcom/ghomesdk/gameplus/login/model/LoginIconModel;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;Lcom/ghomesdk/gameplus/login/model/LoginIconModel;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;->this$0:Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;->val$dataIcon:Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;->val$dataIcon:Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconBtText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;->val$dataIcon:Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconBtText()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;->this$0:Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->access$000(Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;)Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;->val$dataIcon:Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconBtText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;->onTextClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
