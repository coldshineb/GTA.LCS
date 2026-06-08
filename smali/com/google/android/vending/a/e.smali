.class final Lcom/google/android/vending/a/e;
.super Lcom/a/a/a/b;


# instance fields
.field final synthetic a:Lcom/google/android/vending/a/d;

.field private final b:Lcom/google/android/vending/a/i;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/a/d;Lcom/google/android/vending/a/i;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    invoke-direct {p0}, Lcom/a/a/a/b;-><init>()V

    iput-object p2, p0, Lcom/google/android/vending/a/e;->b:Lcom/google/android/vending/a/i;

    new-instance v0, Lcom/google/android/vending/a/f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/vending/a/f;-><init>(Lcom/google/android/vending/a/e;Lcom/google/android/vending/a/d;)V

    iput-object v0, p0, Lcom/google/android/vending/a/e;->c:Ljava/lang/Runnable;

    const-string v0, "LicenseChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    invoke-static {v0}, Lcom/google/android/vending/a/d;->c(Lcom/google/android/vending/a/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/a/e;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/a/e;)Lcom/google/android/vending/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/a/e;->b:Lcom/google/android/vending/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/vending/a/e;)V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    invoke-static {v0}, Lcom/google/android/vending/a/d;->c(Lcom/google/android/vending/a/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/a/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    invoke-static {v0}, Lcom/google/android/vending/a/d;->c(Lcom/google/android/vending/a/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/a/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/vending/a/g;-><init>(Lcom/google/android/vending/a/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
