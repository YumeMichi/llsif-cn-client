.class public Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;
.super Ljava/lang/Object;


# static fields
.field protected static final AL_fatal:S = 0x2s

.field protected static final AL_warning:S = 0x1s

.field protected static final AP_access_denied:S = 0x31s

.field protected static final AP_bad_certificate:S = 0x2as

.field protected static final AP_bad_record_mac:S = 0x14s

.field protected static final AP_certificate_expired:S = 0x2ds

.field protected static final AP_certificate_revoked:S = 0x2cs

.field protected static final AP_certificate_unknown:S = 0x2es

.field protected static final AP_close_notify:S = 0x0s

.field protected static final AP_decode_error:S = 0x32s

.field protected static final AP_decompression_failure:S = 0x1es

.field protected static final AP_decrypt_error:S = 0x33s

.field protected static final AP_decryption_failed:S = 0x15s

.field protected static final AP_export_restriction:S = 0x3cs

.field protected static final AP_handshake_failure:S = 0x28s

.field protected static final AP_illegal_parameter:S = 0x2fs

.field protected static final AP_insufficient_security:S = 0x47s

.field protected static final AP_internal_error:S = 0x50s

.field protected static final AP_no_renegotiation:S = 0x64s

.field protected static final AP_protocol_version:S = 0x46s

.field protected static final AP_record_overflow:S = 0x16s

.field protected static final AP_unexpected_message:S = 0xas

.field protected static final AP_unknown_ca:S = 0x30s

.field protected static final AP_unsupported_certificate:S = 0x2bs

.field protected static final AP_user_canceled:S = 0x5as

.field private static final CS_CERTIFICATE_REQUEST_RECEIVED:S = 0x5s

.field private static final CS_CLIENT_CHANGE_CIPHER_SPEC_SEND:S = 0x8s

.field private static final CS_CLIENT_FINISHED_SEND:S = 0x9s

.field private static final CS_CLIENT_HELLO_SEND:S = 0x1s

.field private static final CS_CLIENT_KEY_EXCHANGE_SEND:S = 0x7s

.field private static final CS_DONE:S = 0xbs

.field private static final CS_SERVER_CERTIFICATE_RECEIVED:S = 0x3s

.field private static final CS_SERVER_CHANGE_CIPHER_SPEC_RECEIVED:S = 0xas

.field private static final CS_SERVER_HELLO_DONE_RECEIVED:S = 0x6s

.field private static final CS_SERVER_HELLO_RECEIVED:S = 0x2s

.field private static final CS_SERVER_KEY_EXCHANGE_RECEIVED:S = 0x4s

.field private static final HP_CERTIFICATE:S = 0xbs

.field private static final HP_CERTIFICATE_REQUEST:S = 0xds

.field private static final HP_CERTIFICATE_VERIFY:S = 0xfs

.field private static final HP_CLIENT_HELLO:S = 0x1s

.field private static final HP_CLIENT_KEY_EXCHANGE:S = 0x10s

.field private static final HP_FINISHED:S = 0x14s

.field private static final HP_HELLO_REQUEST:S = 0x0s

.field private static final HP_SERVER_HELLO:S = 0x2s

.field private static final HP_SERVER_HELLO_DONE:S = 0xes

.field private static final HP_SERVER_KEY_EXCHANGE:S = 0xcs

.field private static final RL_ALERT:S = 0x15s

.field private static final RL_APPLICATION_DATA:S = 0x17s

.field private static final RL_CHANGE_CIPHER_SPEC:S = 0x14s

.field private static final RL_HANDSHAKE:S = 0x16s

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"

.field private static final emptybuf:[B


# instance fields
.field private Yc:Ljava/math/BigInteger;

.field private alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private appDataReady:Z

.field private applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

.field private clientRandom:[B

.field private closed:Z

.field private connection_state:S

.field private failedWithError:Z

.field private handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private ms:[B

.field private pms:[B

.field private random:Ljava/security/SecureRandom;

.field private rs:Lorg/bouncycastle/crypto/tls/RecordStream;

.field private serverRandom:[B

.field private serverRsaKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOuputStream;

.field private verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRsaKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOuputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    new-instance v0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRsaKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOuputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    new-instance p3, Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-direct {p3, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    return-void
.end method

.method private processAlert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-array v0, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v2, v0, v3

    int-to-short v2, v2

    const/4 v4, 0x1

    aget-byte v0, v0, v4

    int-to-short v0, v0

    if-eq v2, v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private processApplicationData()V
    .locals 0

    return-void
.end method

.method private processChangeCipherSpec()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v1, v1, v3

    const/16 v2, 0xa

    const/4 v3, 0x2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processHandshake()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_19

    new-array v0, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v0, v2, v1, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x4

    if-lt v5, v6, :cond_19

    new-array v5, v3, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v7, v5, v2, v3, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    const/16 v6, 0x14

    if-eq v4, v6, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v7, v7, Lorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v7, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v7, v7, Lorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v7, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v3, 0xa

    const/4 v5, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_16

    const/16 v8, 0x24

    const/16 v9, 0x28

    const/16 v10, 0xc

    if-eq v4, v6, :cond_12

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x3

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v4, v13, :cond_2

    if-eq v4, v1, :cond_3

    if-eq v4, v12, :cond_3

    invoke-virtual {p0, v7, v9}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_a

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-ne v0, v12, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate()V

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v0

    const/16 v1, 0x16

    const/16 v4, 0x30

    if-eq v0, v5, :cond_7

    if-eq v0, v12, :cond_6

    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->Yc:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v9, 0x10

    invoke-static {v9, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v9, v0

    add-int/2addr v9, v7

    invoke-static {v9, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    array-length v7, v0

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v7, v0

    invoke-virtual {v3, v1, v0, v2, v7}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    goto :goto_3

    :cond_7
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    aput-byte v13, v0, v2

    aput-byte v5, v0, v5

    const/4 v0, 0x2

    :goto_1
    if-ge v0, v4, :cond_8

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextInt()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v3, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v9, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRsaKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v12, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v9, v12}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v3, v5, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    array-length v9, v9

    invoke-virtual {v3, v0, v2, v9}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object v11
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/16 v0, 0x50

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :goto_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x10

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v3, v11

    add-int/2addr v3, v7

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    array-length v3, v11

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v7, v0

    invoke-virtual {v3, v1, v0, v2, v7}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    :goto_3
    const/4 v0, 0x7

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    new-array v0, v5, [B

    aput-byte v5, v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v7, v0

    invoke-virtual {v3, v6, v0, v2, v7}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    const/16 v0, 0x8

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    array-length v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v0

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    array-length v4, v4

    array-length v7, v0

    invoke-static {v0, v2, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    const-string v4, "master secret"

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    invoke-static {v0, v4, v3, v7}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    invoke-virtual {v0, v3, v4, v7}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;->init([B[B[B)V

    new-array v0, v10, [B

    new-array v3, v8, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v4, v4, Lorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v4, v3, v2}, Lorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    const-string v7, "client finished"

    invoke-static {v7}, Lorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v4, v7, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v6, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v10, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v4, v0

    invoke-virtual {v3, v1, v0, v2, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    const/16 v0, 0x9

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_a

    :pswitch_1
    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v4, v13, :cond_9

    if-eq v4, v1, :cond_a

    :goto_5
    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_a

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v1

    if-eq v1, v5, :cond_a

    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_a
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    new-array v1, v1, [B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v12, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_4

    :pswitch_2
    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v4, v13, :cond_b

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v4

    if-eq v4, v12, :cond_c

    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_c
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v6

    new-array v8, v6, [B

    invoke-static {v8, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v9

    new-array v10, v9, [B

    invoke-static {v10, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v12

    new-array v12, v12, [B

    invoke-static {v12, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v3, v13}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v13, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v6, v13}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v13, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v9, v13}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v13, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    array-length v9, v6

    invoke-virtual {v0, v6, v2, v9}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    array-length v9, v6

    invoke-virtual {v0, v6, v2, v9}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    array-length v6, v3

    invoke-virtual {v0, v3, v2, v6}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    new-instance v0, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v6, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRsaKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v6, v2, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/16 v0, 0x2a

    :try_start_1
    array-length v9, v12

    invoke-virtual {v6, v12, v2, v9}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object v11
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :goto_6
    array-length v6, v11

    array-length v9, v3

    if-eq v6, v9, :cond_d

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_d
    :goto_7
    array-length v6, v11

    if-ge v2, v6, :cond_f

    aget-byte v6, v11, v2

    aget-byte v9, v3, v2

    if-eq v6, v9, :cond_e

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v5, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    sub-int/2addr v6, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v6, v7}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v2, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->Yc:Ljava/math/BigInteger;

    invoke-virtual {v3, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_4

    :pswitch_3
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v1, v7, :cond_10

    goto/16 :goto_5

    :cond_10
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/Certificate;->getCerts()[Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/tls/CertificateVerifyer;->isValid([Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x5a

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_11
    :try_start_2
    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/Certificate;->certs:[Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    const/16 v0, 0x2b

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :goto_8
    new-instance v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRsaKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-short v13, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_4

    :cond_12
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v1, v3, :cond_13

    goto/16 :goto_5

    :cond_13
    new-array v1, v10, [B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-array v0, v10, [B

    new-array v3, v8, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v4, v4, Lorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v4, v3, v2}, Lorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    const-string v6, "server finished"

    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_15

    aget-byte v3, v1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_14

    invoke-virtual {p0, v7, v9}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    const/16 v0, 0xb

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    iput-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    goto/16 :goto_4

    :cond_16
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v1, v5, :cond_17

    goto/16 :goto_5

    :cond_17
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    new-array v1, v1, [B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1, p0}, Lorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->getCipherSuite(ILorg/bouncycastle/crypto/tls/TlsProtocolHandler;)Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->choosenCipherSuite:Lorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x2f

    invoke-virtual {p0, v7, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_18
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_4

    :cond_19
    :goto_a
    if-nez v2, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendClientCertificate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v3, v0

    const/16 v4, 0x16

    invoke-virtual {v2, v4, v0, v1, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method


# virtual methods
.method protected assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x2

    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    return-void
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/CertificateVerifyer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    const/16 p1, 0x20

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->writeCipherSuites(Ljava/io/OutputStream;)V

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v1, 0x16

    array-length v4, p1

    invoke-virtual {v0, v1, p1, v2, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    :goto_1
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->readData()V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsInputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsInputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsOuputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsOuputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOuputStream;

    return-void
.end method

.method protected failWithError(SS)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    const-string v1, "Internal TLS error, this could be an attack"

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v2, v0, [B

    int-to-byte v3, p1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    int-to-byte p2, p2

    const/4 v3, 0x1

    aput-byte p2, v2, v3

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-ne p1, v0, :cond_0

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x15

    invoke-virtual {p2, v3, v2, v4, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/RecordStream;->close()V

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOuputStream;

    return-object v0
.end method

.method public getTlsInputStream()Lorg/bouncycastle/crypto/tls/TlsInputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getTlsOuputStream()Lorg/bouncycastle/crypto/tls/TlsOuputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOuputStream;

    return-object v0
.end method

.method protected processData(S[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processApplicationData()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processHandshake()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processAlert()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processChangeCipherSpec()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readApplicationData([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 v0, 0x50

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->readData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    throw p1

    :catch_1
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_2

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    return p3
.end method

.method protected writeData([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-virtual {v0, v3, v1, v2, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    :cond_0
    const/16 v0, 0x4000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x50

    const/4 v2, 0x2

    :try_start_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v3, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    throw p1

    :catch_1
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_2

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
