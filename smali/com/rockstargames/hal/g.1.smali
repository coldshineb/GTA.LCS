.class final Lcom/rockstargames/hal/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[B

.field private synthetic b:I

.field private synthetic c:Lcom/rockstargames/hal/PresenceConnection;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/PresenceConnection;[BI)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/g;->c:Lcom/rockstargames/hal/PresenceConnection;

    iput-object p2, p0, Lcom/rockstargames/hal/g;->a:[B

    iput p3, p0, Lcom/rockstargames/hal/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/rockstargames/hal/g;->c:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v0}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/g;->c:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v1}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/g;->a:[B

    iget v3, p0, Lcom/rockstargames/hal/g;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    return-void
.end method
