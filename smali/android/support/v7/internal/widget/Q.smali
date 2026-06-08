.class final Landroid/support/v7/internal/widget/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/P;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/P;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/Q;->a:Landroid/support/v7/internal/widget/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->a:Landroid/support/v7/internal/widget/P;

    iget-object v0, v0, Landroid/support/v7/internal/widget/P;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->a:Landroid/support/v7/internal/widget/P;

    iget-object v0, v0, Landroid/support/v7/internal/widget/P;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->l:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->a:Landroid/support/v7/internal/widget/P;

    iget-object v0, v0, Landroid/support/v7/internal/widget/P;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Q;->a:Landroid/support/v7/internal/widget/P;

    invoke-static {v1}, Landroid/support/v7/internal/widget/P;->a(Landroid/support/v7/internal/widget/P;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;IJ)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->a:Landroid/support/v7/internal/widget/P;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/P;->a()V

    return-void
.end method
