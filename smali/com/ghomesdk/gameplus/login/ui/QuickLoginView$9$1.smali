.class Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;
.super Ljava/lang/Object;
.source "QuickLoginView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;)V
    .locals 1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doQuickLoginRemove(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->setSelectPosition(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 206
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->setSelectPosition(I)V

    .line 208
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$202(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;I)I

    .line 211
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
