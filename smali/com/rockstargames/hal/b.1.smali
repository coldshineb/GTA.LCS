.class final Lcom/rockstargames/hal/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/ActivityWrapper;

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->access$000(Lcom/rockstargames/hal/ActivityWrapper;)V

    return-void
.end method
