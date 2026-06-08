.class final Lcom/google/android/play/core/assetpacks/ek;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bh;

.field private final b:Lcom/google/android/play/core/assetpacks/de;

.field private final c:Lcom/google/android/play/core/assetpacks/co;

.field private final d:Lcom/google/android/play/core/assetpacks/internal/aq;

.field private final e:Lcom/google/android/play/core/assetpacks/internal/aq;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/co;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ek;->a:Lcom/google/android/play/core/assetpacks/bh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ek;->d:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/ek;->b:Lcom/google/android/play/core/assetpacks/de;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/ek;->e:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/ek;->c:Lcom/google/android/play/core/assetpacks/co;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/ei;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ek;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ei;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ei;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ek;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/ei;->b:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/ei;->c:J

    .line 5
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ek;->e:Lcom/google/android/play/core/assetpacks/internal/aq;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/ej;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/ej;-><init>(Lcom/google/android/play/core/assetpacks/ek;Lcom/google/android/play/core/assetpacks/ei;)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ek;->b:Lcom/google/android/play/core/assetpacks/de;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ei;->b:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ei;->c:J

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/de;->k(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ek;->c:Lcom/google/android/play/core/assetpacks/co;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/co;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ek;->d:Lcom/google/android/play/core/assetpacks/internal/aq;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/y;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/ei;->k:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/y;->h(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v2, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot promote pack %s from %s to %s"

    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ei;->k:I

    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2
    :cond_1
    new-instance v1, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Cannot find pack files to promote for pack %s at %s"

    .line 4
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ei;->k:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/ei;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ek;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ei;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ei;->b:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ei;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->B(Ljava/lang/String;IJ)V

    return-void
.end method
