.class public Lcom/reyun/tracking/utils/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/reyun/tracking/utils/p;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/reyun/tracking/utils/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reyun/tracking/utils/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/reyun/tracking/utils/q;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/reyun/tracking/utils/q;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/reyun/tracking/utils/q;->h:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/reyun/tracking/utils/q;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/reyun/tracking/utils/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/reyun/tracking/utils/p;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/q;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/q;->e:Ljava/lang/Integer;

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/q;->f:Ljava/lang/Integer;

    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, "Tracking"

    :try_start_0
    const-string v2, "========== POST Request Begin =========="

    invoke-static {v1, v2}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "application/x-www-form-urlencoded"

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Charset"

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->g:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/reyun/tracking/a/i;->f:Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    const-string v4, "encrypt"

    const-string v5, "yes"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->e:Ljava/lang/Integer;

    const/16 v5, 0x1388

    if-nez v4, :cond_3

    const/16 v4, 0x1388

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->e:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->f:Ljava/lang/Integer;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->f:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_3
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    instance-of v4, v2, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    new-array v6, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    new-instance v8, Lcom/reyun/tracking/utils/r;

    invoke-direct {v8, p0}, Lcom/reyun/tracking/utils/r;-><init>(Lcom/reyun/tracking/utils/q;)V

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    move-object v6, v2

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    iget-object v4, p0, Lcom/reyun/tracking/utils/q;->b:Ljava/lang/String;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request data:\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/reyun/tracking/utils/q;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/reyun/tracking/utils/a;->a()Lcom/reyun/tracking/utils/a;

    move-result-object v0

    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/reyun/tracking/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :goto_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_4

    :cond_7
    :goto_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    invoke-interface {v3, v2, v0}, Lcom/reyun/tracking/utils/p;->a(ILjava/lang/Object;)V

    goto/16 :goto_e

    :cond_8
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request server failed! response Code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/reyun/tracking/utils/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Request http server failed!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/reyun/tracking/utils/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_c

    :goto_7
    sget-boolean v2, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    const-string v3, "response Code=-500"

    goto :goto_d

    :goto_8
    sget-boolean v2, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    const-string v3, "response Code=-6"

    goto :goto_d

    :goto_9
    sget-boolean v2, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    :cond_d
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    const-string v3, "response Code=-5"

    goto :goto_d

    :goto_a
    sget-boolean v2, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_e
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    const-string v3, "response Code=-4"

    goto :goto_d

    :goto_b
    sget-boolean v2, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    const-string v3, "response Code=-3"

    goto :goto_d

    :goto_c
    sget-boolean v2, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_10
    iget-object v2, p0, Lcom/reyun/tracking/utils/q;->d:Lcom/reyun/tracking/utils/p;

    const-string v3, "response Code=-2"

    :goto_d
    invoke-interface {v2, v0, v3}, Lcom/reyun/tracking/utils/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_e
    const-string v0, "********** Request End **********"

    invoke-static {v1, v0}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
