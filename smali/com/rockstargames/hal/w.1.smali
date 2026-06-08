.class final Lcom/rockstargames/hal/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/rockstargames/hal/u;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/u;I)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/w;->b:Lcom/rockstargames/hal/u;

    iput p2, p0, Lcom/rockstargames/hal/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/w;->b:Lcom/rockstargames/hal/u;

    iget-object v0, v0, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/w;->b:Lcom/rockstargames/hal/u;

    iget-object v1, v1, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->access$400(Lcom/rockstargames/hal/andHttp;)I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/w;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    return-void
.end method
