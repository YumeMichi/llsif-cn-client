.class Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "DefaultSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory$1;->this$0:Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
