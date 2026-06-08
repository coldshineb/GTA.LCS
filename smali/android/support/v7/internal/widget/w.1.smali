.class final Landroid/support/v7/internal/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/t;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/t;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/t;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/t;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/t;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/t;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/t;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/t;

    invoke-static {v0}, Landroid/support/v7/internal/widget/t;->b(Landroid/support/v7/internal/widget/t;)V

    goto :goto_0
.end method
