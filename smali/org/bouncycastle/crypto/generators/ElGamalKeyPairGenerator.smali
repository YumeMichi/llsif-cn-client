.class public Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private param:Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->helper:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object v3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    return-void
.end method
