.class final Lcom/rockstargames/hal/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/u;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/y;->a:Lcom/rockstargames/hal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/y;->a:Lcom/rockstargames/hal/u;

    iget-object v0, v0, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/y;->a:Lcom/rockstargames/hal/u;

    iget-object v1, v1, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->access$400(Lcom/rockstargames/hal/andHttp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andHttp;->onConnectionFinished(I)V

    return-void
.end method
