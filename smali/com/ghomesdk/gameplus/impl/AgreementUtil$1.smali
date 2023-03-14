.class final Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;
.super Ljava/lang/Object;
.source "AgreementUtil.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/AgreementUtil;->updateAgreement(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_version:Ljava/lang/String;

.field final synthetic val$ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$ctx:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$_version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateAgreement callback code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AgreementUtil"

    invoke-static {p3, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$ctx:Landroid/app/Activity;

    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->agreement_filename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 52
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$ctx:Landroid/app/Activity;

    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->agreement_newest_filename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$ctx:Landroid/app/Activity;

    sget-object p3, Lcom/ghomesdk/gameplus/config/Config;->agreement_filename:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/FileUtil;->renameFile(Ljava/io/File;Ljava/io/File;)V

    .line 53
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$ctx:Landroid/app/Activity;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;->val$_version:Ljava/lang/String;

    const-string p3, "agreement_version"

    invoke-static {p1, p3, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
