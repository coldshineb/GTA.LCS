.class final Lcom/rockstargames/hal/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/rockstargames/hal/U;->a:I

    iput p2, p0, Lcom/rockstargames/hal/U;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/rockstargames/hal/U;->a:I

    if-lez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/rockstargames/hal/U;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget v0, p0, Lcom/rockstargames/hal/U;->b:I

    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->access$000(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HAL"

    const-string v2, "Interrupted sleep:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
