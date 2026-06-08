.class public Lcom/fastman92/main_activity_launcher/SignFix;
.super Ljava/lang/Object;
.source "SignFix.java"


# instance fields
.field context:Landroid/content/Context;

.field originalSignatures:[Landroid/content/pm/Signature;

.field private sign:[[B


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/SignFix;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private static debug(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "fastman92 app launcher"

    const-string v1, "before"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 50
    .local v1, "sigs":[Landroid/content/pm/Signature;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 52
    .local v4, "sig":Landroid/content/pm/Signature;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const-string v2, "done"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 151
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 152
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v1

    .line 154
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 157
    if-eqz p0, :cond_1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    return-object v2

    .line 164
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    .line 165
    goto :goto_0

    .line 158
    :cond_0
    nop

    .line 167
    :cond_1
    throw v1
.end method

.method private static killPM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "signatureData"    # Ljava/lang/String;

    .line 267
    new-instance v0, Landroid/content/pm/Signature;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>([B)V

    .line 268
    .local v0, "fakeSignature":Landroid/content/pm/Signature;
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 269
    .local v2, "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Lcom/fastman92/main_activity_launcher/SignFix$2;

    invoke-direct {v3, v2, p0, v0}, Lcom/fastman92/main_activity_launcher/SignFix$2;-><init>(Landroid/os/Parcelable$Creator;Ljava/lang/String;Landroid/content/pm/Signature;)V

    .line 295
    .local v3, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    const-class v4, Landroid/content/pm/PackageInfo;

    const-string v5, "CREATOR"

    invoke-static {v4, v5}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 299
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 303
    :try_start_1
    const-class v4, Landroid/content/pm/PackageManager;

    const-string v6, "sPackageInfoCache"

    invoke-static {v4, v6}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 305
    .local v4, "cache":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clear"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    nop

    .end local v4    # "cache":Ljava/lang/Object;
    goto :goto_0

    .line 306
    :catchall_0
    move-exception v1

    .line 309
    :goto_0
    :try_start_2
    const-class v1, Landroid/os/Parcel;

    const-string v4, "mCreators"

    invoke-static {v1, v4}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 311
    .local v1, "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    .end local v1    # "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_1

    .line 312
    :catchall_1
    move-exception v1

    .line 315
    :goto_1
    :try_start_3
    const-class v1, Landroid/os/Parcel;

    const-string v4, "sPairedCreators"

    invoke-static {v1, v4}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 317
    .local v1, "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 319
    .end local v1    # "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_2

    .line 318
    :catchall_2
    move-exception v1

    .line 320
    :goto_2
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public Fix(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bSignatureSpoof:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bContainsSignatures:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fastman92/main_activity_launcher/SignFix;->ReadSignaturesFromAssetFile(Landroid/content/Context;)V

    .line 180
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 182
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 183
    .local v1, "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    nop

    .line 264
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public ReadSignaturesFromAssetFile(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "original_signatures.bin"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v0, "is":Ljava/io/DataInputStream;
    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 69
    .local v2, "numberOfSignatures":I
    new-array v3, v2, [Landroid/content/pm/Signature;

    iput-object v3, p0, Lcom/fastman92/main_activity_launcher/SignFix;->originalSignatures:[Landroid/content/pm/Signature;

    .line 71
    new-array v3, v2, [[B

    .line 73
    .local v3, "sign":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 76
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    new-array v5, v5, [B

    .line 79
    .local v5, "signature":[B
    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 80
    iget-object v6, p0, Lcom/fastman92/main_activity_launcher/SignFix;->originalSignatures:[Landroid/content/pm/Signature;

    new-instance v7, Landroid/content/pm/Signature;

    invoke-direct {v7, v5}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v6, v4

    .line 81
    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v5    # "signature":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "is":Ljava/io/DataInputStream;
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "numberOfSignatures":I
    .end local v3    # "sign":[[B
    .end local v4    # "i":I
    :cond_0
    nop

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public killPM()V
    .locals 10

    .line 89
    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .local v0, "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    move-object v1, p0

    .line 91
    .local v1, "SignFixThis":Lcom/fastman92/main_activity_launcher/SignFix;
    iget-object v2, p0, Lcom/fastman92/main_activity_launcher/SignFix;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/fastman92/main_activity_launcher/SignFix$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/fastman92/main_activity_launcher/SignFix$1;-><init>(Lcom/fastman92/main_activity_launcher/SignFix;Landroid/os/Parcelable$Creator;Ljava/lang/String;Lcom/fastman92/main_activity_launcher/SignFix;)V

    .line 122
    .local v3, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    const-class v4, Landroid/content/pm/PackageInfo;

    const-string v5, "CREATOR"

    invoke-static {v4, v5}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 126
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    :try_start_1
    const-class v4, Landroid/content/pm/PackageManager;

    const-string v6, "sPackageInfoCache"

    invoke-static {v4, v6}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 132
    .local v4, "cache":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clear"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    nop

    .end local v4    # "cache":Ljava/lang/Object;
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v4

    .line 136
    :goto_0
    :try_start_2
    const-class v4, Landroid/os/Parcel;

    const-string v6, "mCreators"

    invoke-static {v4, v6}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 138
    .local v4, "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .end local v4    # "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_1

    .line 139
    :catchall_1
    move-exception v4

    .line 142
    :goto_1
    :try_start_3
    const-class v4, Landroid/os/Parcel;

    const-string v6, "sPairedCreators"

    invoke-static {v4, v6}, Lcom/fastman92/main_activity_launcher/SignFix;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 144
    .local v4, "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 146
    .end local v4    # "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_2

    .line 145
    :catchall_2
    move-exception v4

    .line 147
    :goto_2
    return-void

    .line 123
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
