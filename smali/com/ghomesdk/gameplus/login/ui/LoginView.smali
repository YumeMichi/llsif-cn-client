.class public abstract Lcom/ghomesdk/gameplus/login/ui/LoginView;
.super Lcom/ghomesdk/gameplus/login/ui/BaseView;
.source "LoginView.java"


# instance fields
.field protected ctx:Landroid/app/Activity;

.field protected loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/BaseView;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/LoginView;->ctx:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/LoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    return-void
.end method

.method public abstract onClickAndroidBack()V
.end method
