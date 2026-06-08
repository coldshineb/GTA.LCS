.class final Lcom/rockstargames/hal/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockstargames/hal/V;->a:I

    iput p2, p0, Lcom/rockstargames/hal/V;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/rockstargames/hal/V;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/V;->a:I

    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->access$000(I)V

    return-void
.end method
