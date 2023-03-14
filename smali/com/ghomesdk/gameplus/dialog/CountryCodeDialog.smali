.class public Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "CountryCodeDialog.java"


# static fields
.field private static countryCode:Ljava/lang/String; = "+86"

.field public static mAlphabetList:[Ljava/lang/String;


# instance fields
.field private callabck:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

.field private context:Landroid/content/Context;

.field private countryObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1b

    .line 135
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u70ed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->mAlphabetList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->callabck:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)Lcom/ghomesdk/gameplus/callback/GetDataCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->callabck:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getCodePositonFromlist(Ljava/lang/String;)I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hideKeyboard()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    :cond_0
    return-void
.end method

.method private initializeCountrycodeList(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "gl_youyun_region_codes"

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->getArray(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    const-string v5, " "

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 110
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    aget-object v6, v4, v1

    aget-object v3, v4, v3

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-direct {v5, v6, v3, v4}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public getArray(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u624b\u673a\u5f52\u5c5e\u5730"

    return-object v0
.end method

.method protected onCountryCodeSelected(Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;)V
    .locals 4

    .line 126
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryCode:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->cancel()V

    .line 129
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->callabck:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    sget-object v2, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryCode:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/ghomesdk/gameplus/callback/GetDataCallback;->callback(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUNXINXIN   +++++++++++++   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 38
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    const-string v1, "gl_dialog_country_code"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->initializeCountrycodeList(Landroid/content/Context;)Z

    .line 43
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    const-string v1, "iv_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge p1, v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_0

    .line 56
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 63
    :cond_3
    new-instance p1, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryObjs:Ljava/util/ArrayList;

    sget-object v4, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryCode:Ljava/lang/String;

    invoke-direct {p1, v1, v3, v4}, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->context:Landroid/content/Context;

    const-string v3, "alphabet_listView_country_code"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/customized/AlphabetListView;

    .line 65
    invoke-virtual {v1, v0}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->setAlphabetIndex(Ljava/util/HashMap;)V

    .line 66
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 67
    sget-object p1, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->countryCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->getCodePositonFromlist(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->SetAlphabetListToPosition(I)V

    .line 69
    iget-object p1, v1, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$2;-><init>(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object p1, v1, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget-object p1, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->mAlphabetList:[Ljava/lang/String;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->initList([Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->hideKeyboard()V

    const/16 p1, 0x8

    .line 79
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetListView;->setAlphabetViewVisibility(I)V

    return-void
.end method
