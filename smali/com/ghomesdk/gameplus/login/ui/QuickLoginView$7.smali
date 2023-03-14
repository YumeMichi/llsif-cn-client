.class Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;
.super Ljava/lang/Object;
.source "QuickLoginView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doQuickLoginRemove(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 133
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 137
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->setSelectPosition(I)V

    .line 139
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 142
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->setSelectPosition(I)V

    .line 144
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1, v1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$202(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;I)I

    .line 145
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 152
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->notifyDataSetChanged()V

    return-void
.end method
