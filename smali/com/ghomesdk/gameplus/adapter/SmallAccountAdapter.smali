.class public Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmallAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private isSelected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->isSelected:Ljava/util/Map;

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->setSelectPosition(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getExtendAccs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 65
    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->context:Landroid/content/Context;

    const-string v1, "gl_app_theme_light"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-nez p2, :cond_0

    .line 67
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->context:Landroid/content/Context;

    const-string v1, "gl_small_account_item"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;-><init>(Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;Landroid/view/View;)V

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;

    :goto_0
    if-nez p1, :cond_1

    .line 76
    iget-object v1, v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->content:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getMasterAcc()Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getExtendAccs()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->getAccdesc()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getExtendAccs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->getAccname()Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_2
    iget-object v2, v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    iget-object p1, v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object p1, v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->content:Landroid/widget/TextView;

    const-string v0, "gl_important_txt1_light"

    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/ghomesdk/gameplus/utils/TextViewHelper;->setTextAppearance(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_2

    .line 88
    :cond_3
    iget-object p1, v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object p1, v0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->content:Landroid/widget/TextView;

    const-string v0, "gl_input_txt_light"

    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/ghomesdk/gameplus/utils/TextViewHelper;->setTextAppearance(Landroid/content/Context;Landroid/widget/TextView;I)V

    :goto_2
    return-object p2
.end method

.method public setSelectPosition(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getExtendAccs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 40
    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->isSelected:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
