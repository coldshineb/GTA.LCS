.class Lcom/rockstargames/hal/andThread$2;
.super Ljava/lang/Object;
.source "andThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andThread;->runOnBackgroundThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:I

.field final synthetic val$runnableId:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput p1, p0, Lcom/rockstargames/hal/andThread$2;->val$delay:I

    iput p2, p0, Lcom/rockstargames/hal/andThread$2;->val$runnableId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget v0, p0, Lcom/rockstargames/hal/andThread$2;->val$delay:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    .line 117
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    const-string v1, "HAL"

    const-string v2, "Interrupted sleep:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 125
    :cond_0
    :goto_0
    iget v0, p0, Lcom/rockstargames/hal/andThread$2;->val$runnableId:I

    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->access$000(I)V

    return-void
.end method
