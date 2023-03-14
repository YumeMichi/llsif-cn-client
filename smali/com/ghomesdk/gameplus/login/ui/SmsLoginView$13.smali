.class Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$13;
.super Ljava/lang/Object;
.source "SmsLoginView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$13;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$13;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v0, "agreement_checkbox_selected"

    invoke-static {p1, v0, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
