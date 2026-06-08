.class final Landroid/support/v4/widget/f;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/d;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/d;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/f;-><init>(Landroid/support/v4/widget/d;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/d;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/d;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->notifyDataSetInvalidated()V

    return-void
.end method
