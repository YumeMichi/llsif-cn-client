.class public Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickLoginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;
    }
.end annotation


# instance fields
.field private callback:Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;

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

.field quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->isSelected:Ljava/util/Map;

    .line 37
    iput-object p3, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->callback:Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->setSelectPosition(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;)Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->callback:Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .locals 6

    .line 69
    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->context:Landroid/content/Context;

    const-string v1, "gl_app_theme_light"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-nez p2, :cond_0

    .line 71
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->context:Landroid/content/Context;

    const-string v1, "gl_quick_login_item"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;-><init>(Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;Landroid/view/View;)V

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getPhoneStr()Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 86
    iget-object v2, v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->phoneNumber:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6e38\u5ba2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->phoneNumber:Landroid/widget/TextView;

    const-string v2, "gl_important_txt1_light"

    invoke-static {p3, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/ghomesdk/gameplus/utils/TextViewHelper;->setTextAppearance(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_2

    .line 92
    :cond_3
    iget-object v1, v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->phoneNumber:Landroid/widget/TextView;

    const-string v2, "gl_body_txt1_light"

    invoke-static {p3, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/ghomesdk/gameplus/utils/TextViewHelper;->setTextAppearance(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 94
    :goto_2
    iget-object p3, v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->arrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;-><init>(Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setSelectPosition(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->isSelected:Ljava/util/Map;

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
