.class final Lcom/rockstargames/hal/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/rockstargames/hal/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/rockstargames/hal/r;->a:I

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->access$000(I)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/rockstargames/hal/r;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rockstargames/hal/andHttp;->access$102(Lcom/rockstargames/hal/andHttp;Z)Z

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->access$200(Lcom/rockstargames/hal/andHttp;)Lcom/rockstargames/hal/PresenceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->access$200(Lcom/rockstargames/hal/andHttp;)Lcom/rockstargames/hal/PresenceConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/PresenceConnection;->cancel()V

    :cond_0
    iget v0, p0, Lcom/rockstargames/hal/r;->a:I

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rockstargames/hal/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to cancel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
