.class Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$11;
.super Ljava/lang/Object;
.source "PwdLoginView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$11;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$11;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v0, "agreement_checkbox_selected"

    invoke-static {p1, v0, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
