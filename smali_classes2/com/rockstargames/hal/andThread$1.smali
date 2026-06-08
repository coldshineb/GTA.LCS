.class Lcom/rockstargames/hal/andThread$1;
.super Ljava/lang/Object;
.source "andThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andThread;->setRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/rockstargames/hal/andThread;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->access$202(Z)Z

    :cond_0
    return-void
.end method
