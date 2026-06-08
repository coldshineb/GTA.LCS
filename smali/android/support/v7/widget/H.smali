.class final Landroid/support/v7/widget/H;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/H;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/z;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/H;-><init>(Landroid/support/v7/widget/z;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/H;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/H;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->c()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/H;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->a()V

    return-void
.end method
