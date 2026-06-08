.class final Lcom/google/android/vending/expansion/downloader/a/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/FileOutputStream;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/a/c;Lcom/google/android/vending/expansion/downloader/a/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->f:Z

    iget v0, p1, Lcom/google/android/vending/expansion/downloader/a/c;->l:I

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    return-void
.end method
