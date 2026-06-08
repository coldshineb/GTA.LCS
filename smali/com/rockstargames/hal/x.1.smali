.class final Lcom/rockstargames/hal/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[B

.field private synthetic b:I

.field private synthetic c:Lcom/rockstargames/hal/u;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/u;[BI)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/x;->c:Lcom/rockstargames/hal/u;

    iput-object p2, p0, Lcom/rockstargames/hal/x;->a:[B

    iput p3, p0, Lcom/rockstargames/hal/x;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/rockstargames/hal/x;->c:Lcom/rockstargames/hal/u;

    iget-object v0, v0, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/x;->c:Lcom/rockstargames/hal/u;

    iget-object v1, v1, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->access$400(Lcom/rockstargames/hal/andHttp;)I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/x;->a:[B

    iget v3, p0, Lcom/rockstargames/hal/x;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    return-void
.end method
