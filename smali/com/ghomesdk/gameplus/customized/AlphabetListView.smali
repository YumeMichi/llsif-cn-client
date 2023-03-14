.class public Lcom/ghomesdk/gameplus/customized/AlphabetListView;
.super Landroid/widget/RelativeLayout;
.source "AlphabetListView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;,
        Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

.field public listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "gl_alphabet_list"

    invoke-static {p1, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const-string v0, "gl_tal_list_view"

    .line 48
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    const-string v0, "gl_tal_alphabet_view"

    .line 49
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/customized/AlphabetView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

    const-string v0, "alphabet"

    .line 51
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setTextView(Landroid/widget/TextView;)V

    .line 55
    iget-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

    invoke-virtual {p1, p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setOnTouchingLetterChangedListener(Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;)V

    return-void
.end method


# virtual methods
.method public SetAlphabetListToPosition(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphaIndexer:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setAlphabetIndex(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphaIndexer:Ljava/util/HashMap;

    return-void
.end method

.method public setAlphabetViewVisibility(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDefaultColor(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setDefaultColor(I)V

    :cond_0
    return-void
.end method

.method public setListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setListViewBackgroundResource(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setListViewDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setListViewsetVisibility(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Lcom/ghomesdk/gameplus/customized/AlphabetListView$1;

    invoke-direct {v1, p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView$1;-><init>(Lcom/ghomesdk/gameplus/customized/AlphabetListView;Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/ghomesdk/gameplus/customized/AlphabetListView$2;

    invoke-direct {v1, p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView$2;-><init>(Lcom/ghomesdk/gameplus/customized/AlphabetListView;Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method

.method public setSelectColor(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->alphabetView:Lcom/ghomesdk/gameplus/customized/AlphabetView;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setSelectColor(I)V

    :cond_0
    return-void
.end method
