.class public Lrockstarmobile/utilities/DeviceID;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# static fields
.field private static log:Lrockstarmobile/utilities/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "DeviceID"

    invoke-direct {v0, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/util/UUID;)[B
    .locals 3

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getUUID([B)Ljava/util/UUID;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-static {p0}, Lrockstarmobile/utilities/DeviceID;->getBytes(Ljava/util/UUID;)[B

    move-result-object p0

    .line 6
    invoke-static {}, Lrockstarmobile/utilities/DeviceID;->make()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lrockstarmobile/utilities/DeviceID;->getBytes(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v2, 0x3

    :goto_0
    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 8
    aget-byte v3, p0, v2

    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 14
    sget-object v0, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    const-string v2, "isvalid"

    invoke-virtual {v0, v2, p0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return v1
.end method

.method public static make()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "["

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lrockstarmobile/utilities/DeviceID;->getBytes(Ljava/util/UUID;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 6
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 7
    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 8
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x5

    .line 9
    new-array v4, v3, [B

    move v5, v2

    .line 10
    :goto_0
    array-length v6, v0

    if-eq v5, v6, :cond_0

    .line 11
    rem-int/lit8 v6, v5, 0x5

    rem-int/lit8 v7, v5, 0x5

    aget-byte v7, v4, v7

    array-length v8, v0

    rem-int v8, v5, v8

    aget-byte v8, v0, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-eq v0, v3, :cond_1

    add-int/lit8 v5, v0, 0x2

    .line 16
    aget-byte v6, v4, v0

    aput-byte v6, v1, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    sget-object v3, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "no such algorithm"

    invoke-virtual {v3, v4, v0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 22
    sget-object v3, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "unsupported encoding"

    invoke-virtual {v3, v4, v0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 27
    :cond_1
    :goto_2
    invoke-static {v1}, Lrockstarmobile/utilities/DeviceID;->getUUID([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static test()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    .line 1
    invoke-static {}, Lrockstarmobile/utilities/DeviceID;->make()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEVICEID made: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Lrockstarmobile/utilities/DeviceID;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    sget-object v4, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEVICEID should be valid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 8
    :cond_0
    invoke-static {v3}, Lrockstarmobile/utilities/DeviceID;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Lrockstarmobile/utilities/DeviceID;->log:Lrockstarmobile/utilities/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEVICEID should not be valid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
