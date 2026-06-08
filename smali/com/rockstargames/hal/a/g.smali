.class final Lcom/rockstargames/hal/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/a/f;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/a/g;->a:Lcom/rockstargames/hal/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/a/g;->a:Lcom/rockstargames/hal/a/f;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/a/f;->fullScroll(I)Z

    return-void
.end method
