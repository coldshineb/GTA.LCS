.class final Landroid/support/v7/widget/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/z;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/I;-><init>(Landroid/support/v7/widget/z;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->d(Landroid/support/v7/widget/z;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/z;

    invoke-static {v1}, Landroid/support/v7/widget/z;->c(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->c(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/K;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/K;->run()V

    :cond_0
    return-void
.end method
