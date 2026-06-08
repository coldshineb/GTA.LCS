.class final Landroid/support/v7/internal/widget/I;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/G;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/G;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/I;->a:Landroid/support/v7/internal/widget/G;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/G;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/I;-><init>(Landroid/support/v7/internal/widget/G;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/I;->a:Landroid/support/v7/internal/widget/G;

    invoke-static {v0}, Landroid/support/v7/internal/widget/G;->a(Landroid/support/v7/internal/widget/G;)Landroid/support/v7/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/I;->a:Landroid/support/v7/internal/widget/G;

    invoke-static {v0}, Landroid/support/v7/internal/widget/G;->a(Landroid/support/v7/internal/widget/G;)Landroid/support/v7/widget/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/x;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/K;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/K;->a()Landroid/support/v7/app/c;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/I;->a:Landroid/support/v7/internal/widget/G;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/I;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/c;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v7/internal/widget/G;->a(Landroid/support/v7/internal/widget/G;Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/K;

    move-result-object p2

    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/support/v7/internal/widget/K;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/I;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/K;->a(Landroid/support/v7/app/c;)V

    goto :goto_0
.end method
