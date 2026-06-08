.class final Landroid/support/v7/widget/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/z;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/z;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/C;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-static {v1}, Landroid/support/v7/widget/z;->a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/C;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/C;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/C;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    iget v1, v1, Landroid/support/v7/widget/z;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->c()V

    :cond_0
    return-void
.end method
