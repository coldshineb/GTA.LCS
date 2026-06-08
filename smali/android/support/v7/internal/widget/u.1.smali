.class final Landroid/support/v7/internal/widget/u;
.super Landroid/database/DataSetObserver;


# instance fields
.field private a:Landroid/os/Parcelable;

.field private synthetic b:Landroid/support/v7/internal/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/t;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput-boolean v5, v0, Landroid/support/v7/internal/widget/t;->m:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget-object v1, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget v1, v1, Landroid/support/v7/internal/widget/t;->r:I

    iput v1, v0, Landroid/support/v7/internal/widget/t;->s:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget-object v1, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/t;->r:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget v0, v0, Landroid/support/v7/internal/widget/t;->s:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget v0, v0, Landroid/support/v7/internal/widget/t;->r:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget-object v1, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/t;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/os/Parcelable;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->b()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->requestLayout()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iput-boolean v5, v0, Landroid/support/v7/internal/widget/t;->i:Z

    iget v1, v0, Landroid/support/v7/internal/widget/t;->p:I

    if-ltz v1, :cond_3

    iget v1, v0, Landroid/support/v7/internal/widget/t;->p:I

    iget v2, v0, Landroid/support/v7/internal/widget/t;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/t;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-wide v2, v0, Landroid/support/v7/internal/widget/t;->o:J

    iput-wide v2, v0, Landroid/support/v7/internal/widget/t;->h:J

    iget v2, v0, Landroid/support/v7/internal/widget/t;->n:I

    iput v2, v0, Landroid/support/v7/internal/widget/t;->g:I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    :cond_2
    iput v4, v0, Landroid/support/v7/internal/widget/t;->j:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/t;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    iget v3, v0, Landroid/support/v7/internal/widget/t;->f:I

    if-ltz v3, :cond_5

    iget v3, v0, Landroid/support/v7/internal/widget/t;->f:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget v3, v0, Landroid/support/v7/internal/widget/t;->f:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/internal/widget/t;->h:J

    :goto_1
    iget v2, v0, Landroid/support/v7/internal/widget/t;->f:I

    iput v2, v0, Landroid/support/v7/internal/widget/t;->g:I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    :cond_4
    iput v5, v0, Landroid/support/v7/internal/widget/t;->j:I

    goto :goto_0

    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/internal/widget/t;->h:J

    goto :goto_1
.end method

.method public final onInvalidated()V
    .locals 6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/t;->m:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-static {v0}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/t;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget-object v1, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iget v1, v1, Landroid/support/v7/internal/widget/t;->r:I

    iput v1, v0, Landroid/support/v7/internal/widget/t;->s:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput v3, v0, Landroid/support/v7/internal/widget/t;->r:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput v2, v0, Landroid/support/v7/internal/widget/t;->p:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/t;->q:J

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput v2, v0, Landroid/support/v7/internal/widget/t;->n:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/t;->o:J

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    iput-boolean v3, v0, Landroid/support/v7/internal/widget/t;->i:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->b()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->requestLayout()V

    return-void
.end method
