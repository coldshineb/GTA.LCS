.class final Lcom/google/android/play/core/assetpacks/es;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/internal/o;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/internal/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/es;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/es;->b:Lcom/google/android/play/core/assetpacks/bh;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/er;Ljava/io/File;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/es;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/er;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/er;->b:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bh;->o(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/play/core/assetpacks/eq;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/dq;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/er;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    sget-object p2, Lcom/google/android/play/core/assetpacks/es;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/er;->l:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Verification of slice %s of pack %s successful."

    .line 9
    invoke-virtual {p2, v0, p1}, Lcom/google/android/play/core/assetpacks/internal/o;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 7
    :cond_0
    new-instance p2, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Verification failed for slice %s."

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    invoke-direct {p2, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw p2

    :catch_0
    move-exception v0

    move-object p2, v0

    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not digest file during verification for slice %s."

    .line 5
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :catch_1
    move-exception v0

    move-object p2, v0

    .line 10
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    const-string v1, "SHA256 algorithm not supported."

    .line 6
    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    .line 11
    :cond_1
    :try_start_2
    new-instance p2, Lcom/google/android/play/core/assetpacks/ck;

    const-string v0, "Cannot find metadata files for slice %s."

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    move-object p2, v0

    .line 5
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not reconstruct slice archive during verification for slice %s."

    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/er;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/es;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/er;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/er;->b:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bh;->p(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/assetpacks/es;->b(Lcom/google/android/play/core/assetpacks/er;Ljava/io/File;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/es;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/er;->l:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/er;->a:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/er;->b:J

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/bh;->q(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Failed to move slice %s after verification."

    .line 8
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot find unverified files for slice %s."

    .line 9
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/er;->k:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
