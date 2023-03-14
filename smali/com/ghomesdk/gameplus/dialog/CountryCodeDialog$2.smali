.class Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$2;
.super Ljava/lang/Object;
.source "CountryCodeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    .line 73
    iget-object p2, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-virtual {p2, p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->onCountryCodeSelected(Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;)V

    return-void
.end method
